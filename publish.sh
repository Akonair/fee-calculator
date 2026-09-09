#!/bin/sh
# 同步源文件到仓库根目录（GitHub Pages 入口）并提交
# 用法: ./publish.sh "更新说明"
set -e
cp fee-calculator/index.html index.html
git add -A
git commit -m "${1:-更新费率计算器}"
echo "已提交。如需推送到 GitHub，执行: git push origin main"
