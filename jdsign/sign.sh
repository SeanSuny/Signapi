#!/bin/sh

# 获取当前架构
arch=$(uname -m)

# 根据架构设置文件名
if [[ "$arch" == "arm64" || "$arch" == "aarch64" ]]; then
    name="jdsign-arm"
    rm -rf /jdsign/jdsign-amd
elif [[ "$arch" == "x86_64" ]]; then
    name="jdsign-amd"
    rm -rf /jdsign/jdsign-arm
fi

# 无限循环检查并执行文件
while true; do
    # 检查文件是否存在且可执行
    if [[ -x "/jdsign/$name" ]]; then
        # 执行文件
        /jdsign/$name
    else
        echo "没有检测到可执行文件$name"
    fi
    # 等待一段时间再检查
    sleep 10
done