#!/bin/bash

set -e

# 从环境变量中获取数据库列表
IFS=',' read -ra DATABASES <<< "$MYSQL_MULTIPLE_DATABASES"

# 为每个数据库创建用户和数据库
for db in "${DATABASES[@]}"; do
    echo "Creating database $db"
    mysql -u root -p"$MYSQL_ROOT_PASSWORD" <<-EOSQL
        CREATE DATABASE IF NOT EXISTS \`$db\` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
        CREATE USER IF NOT EXISTS '$db'@'%' IDENTIFIED BY '$db';
        GRANT ALL PRIVILEGES ON \`$db\`.* TO '$db'@'%';
        FLUSH PRIVILEGES;
EOSQL
done 