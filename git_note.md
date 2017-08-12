# git使用简记
## 设置邮箱和用户名
'''
$ git config --global user.name "Your name"
$ git config --global user.email "email@example.com"
'''
## 添加公钥到github
在本地生成密钥对
'''
$ ssh-keygen -t rsa -C "youremail@example.com"
'''
一路enter后，可在~/.ssh目录下看到id_rsa和id_rsa.pub.
将id_rsa.pub复制到github的settings/SSH and GPG keys/New SSH key中。

## 添加远程仓库
只有ssh模式的支持免密推送
'''
$ git remote add origin git@github.com:account/project.git
$ git remote set-url origin git@github.com:account/project.git
'''
## git push时警告
git push总是报warning: push.default is unset错误，今天终于知道为啥了。原来是版本兼容性的原因，低版本的git push如果不指定分支名，就会全部推送，而新版只会推送当前分支。
解决办法：
'''
# 全部推送
$ git git config --global push.default matching

#部分推送
$ git config --global push.default simple
'''
##常用命令
'''
#将文件添加到暂存区,加-a 添加全部,但有.git的目录添加不了
$ git add file

#将暂存区改变同步到本地仓库，默认必须添加-m注释
$ git commit -m 'comment'

#将本地仓库推送到远程仓库
$ git push
'''
其他命令已经命令详细的操作请看帮助文档


