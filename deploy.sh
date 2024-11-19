#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 初始化 Git 仓库（可选，如果 dist 目录已经是一个 Git 仓库，可以省略）
# git init

# 添加所有文件并提交
git add -A
git commit -m 'deploy'

# 发布到 https://aermoon-7.github.io/ServerHelp
git push -f @github.com:AerMoon-7/ServerHelp.git main:sh_pages

# 返回原始目录
cd -