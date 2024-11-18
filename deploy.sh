#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy'
git remote set-url origin https://github.com/AerMoon-7/ServerHelp.git

# 发布到 https://aermoon-7.github.io/ServerHelp
git push -f git@github.com:AerMoon-7/ServerHelp.git master:sh-pages

cd -