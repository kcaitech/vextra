#!/bin/sh

# 服务1的URL
SERVICE1_URL="http://127.0.0.1:80/health"
# 服务2的URL
SERVICE2_URL="http://127.0.0.1:30000/health"

# 初始化健康状态标志
unhealthy=0

# 检查服务1
wget --spider --quiet $SERVICE1_URL
if [ $? -ne 0 ]; then
    echo "Service 1 is NOT healthy."
    unhealthy=1
fi

# 检查服务2
wget --spider --quiet $SERVICE2_URL
if [ $? -ne 0 ]; then
    echo "Service 2 is NOT healthy."
    unhealthy=1
fi

# 返回健康检查结果
if [ $unhealthy -ne 0 ]; then
    exit 1
fi