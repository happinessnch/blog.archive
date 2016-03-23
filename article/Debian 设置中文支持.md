# Debian 设置中文支持

##通过locale修改语言设置

    通过apt-get install locales命令安装locales包
    dpkg-reconfigure locales

选择 zh_CN.UTF-8 UTF-8
注意：默认/etc/default/locale 仍然要设置 LANG=en_US.UF8

locale -a #列出现时系统所支援的区域设置

安装字型（font），输入法和输入法引擎

    apt-get install ttf-arphic-uming scim-tables-zh im-switch
    
或安装xfonts-intl-chinese输入法，最后重新打开终端或刷新设置。

    source /etc/profile