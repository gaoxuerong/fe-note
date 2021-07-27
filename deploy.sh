###
 # @Description: 
 # @version: 
 # @Author: jenny.gao
 # @Date: 2021-07-27 14:57:43
 # @LastEditTime: 2021-07-27 15:52:50
 # @LastEditors: jenny.gao
### 
# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
 #git push -f git@github.com:zhbnyx/zhbnyx.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/gaoxuerong/fe-note.git master:gh-pages

cd -