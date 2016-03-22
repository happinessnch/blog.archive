#Hexo 笔记
**安装 Node.js 和 git**
系统： Debian

    apt-get install git 
    apt-get install curl
    curl https://raw.github.com/creationix/nvm/master/install.sh | sh 或者
    wget -qO- https://raw.github.com/creationix/nvm/master/install.sh | sh

    nvm install v4.4.0
    npm install -g hexo-cli (-d 查看安装过程)
    
*如果，要搭建在github上还需要：*
    
    npm  install hexo-deployer-git --save

**问题 ： "sh:1 node: Permission denied"**
**解决 ：**

    npm config set user 0
    npm config set unsafe-perm true

    npm install hexo --save
    npm install hexo-renderer-marked --save

**问题 : install 到一定的程度后，出现"killed"字样，**
**解决 :**
问题有可能是内存不足，注意基于OpenVZ的VPS都不能使用swap解决该问题

---


*记录：*
https://hexo.io/docs/

    hexo n == hexo new
    hexo g == hexo generate
    hexo s == hexo server
    hexo d == hexo deploy



