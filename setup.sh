#!/bin/bash
set -e

# 这里是先导入数据 然后才设置用户和权限
echo "1. 启动mysql..."c
service mysql start

sleep 1

echo "2. 开始导入数据..."
mysql < /mysql/schema.sql
echo "3. 导入数据完毕..."

sleep 1

echo "4. 开始修改密码..."
mysql < /mysql/privileges.sql
echo "5. 修改密码完毕..."


echo "mysql 容器启动完毕，且数据导入成功"

tail -f /dev/null