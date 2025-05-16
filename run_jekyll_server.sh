#!/bin/bash

# 检查是否安装了bundle和jekyll
if ! command -v bundle &> /dev/null; then
    echo "错误：未找到bundle命令，请确保已安装Ruby和Bundler"
    exit 1
fi

if ! bundle exec jekyll --version &> /dev/null; then
    echo "错误：未找到jekyll，请先运行 'bundle install' 安装依赖"
    exit 1
fi

# 执行Jekyll本地服务
echo "正在启动Jekyll本地服务器..."
bundle exec jekyll serve -l -H localhost

# 检查命令执行状态
if [ $? -ne 0 ]; then
    echo "错误：启动Jekyll服务器失败"
    exit 1
fi
