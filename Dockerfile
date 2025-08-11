# build vextra server
FROM golang:1.23-alpine3.20 AS builder

ENV GO111MODULE=on \
    CGO_ENABLED=0 \
    GOOS=linux \
    GOARCH=amd64 \
    GOPROXY=https://goproxy.cn,direct

RUN set -ex \
    && sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk --update add tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apk --no-cache add ca-certificates

WORKDIR /app
COPY server .
RUN go mod download && go mod tidy -v && go build -ldflags "-s -w" -o kcserver ./main.go

# build vextra web
FROM node:22-alpine AS node-builder
WORKDIR /main
COPY main .
RUN npm i && npm run build:prod

# build vextra version server
WORKDIR /version-server
COPY version-server .
RUN npm i && npm run build


# package
FROM golang:1.23-alpine3.20
WORKDIR /app

ENV TZ=Asia/Shanghai
RUN set -ex \
    && sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
    && apk upgrade --no-cache --available \
    && apk add --no-cache fontconfig

COPY --from=builder /usr/share/zoneinfo/Asia/Shanghai /usr/share/zoneinfo/Asia/Shanghai
COPY docker-entrypoint.sh /app/
COPY health-check.sh /app/
RUN chmod +x docker-entrypoint.sh
RUN chmod +x health-check.sh

COPY --from=builder /app/version.json /app/
COPY --from=builder /app/kcserver /app/kcserver
COPY --from=node-builder /main/dist /app/html
COPY --from=node-builder /version-server/node_modules /app/node_modules
COPY --from=node-builder /version-server/dist /app/dist


EXPOSE 80 30000
ENTRYPOINT [ "/app/docker-entrypoint.sh" ]