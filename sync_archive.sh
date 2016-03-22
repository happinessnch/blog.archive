#!/bin/bash

ssh_key=/Users/nachuang/backup/NetEaseSSHKey
remote_host=root@hive_hexo_blog
remote_path=/var/www/blog/source/_posts/
archive_dir=./article





function __main__ {
    scp -i ${ssh_key} ./article/* ${remote_host}:${remote_path}

    # update hexo 
    ssh -i ${ssh_key} ${remote_host} "cd ${remote_path}; hexo g"
#    for file in `ls ${archive_dir}`; do
#
#        scp -i ${ssh_key} ${file} ${remote_host}:${remote_path}
#    done

}


set -x
__main__ $@
set +x
