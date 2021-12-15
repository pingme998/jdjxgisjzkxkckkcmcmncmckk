#!/bin/bash
#author https://github.com/developeranaz
rc version
curl $CONFIG_IN_URL >$(rc config file |grep 'rclone.conf' |head -1)
rc serve webdav $(rc listremotes |head -1) --template="$thetheme" --addr :$PORT --buffer-size 256M --dir-cache-time 12h --vfs-read-chunk-size 256M --vfs-read-chunk-size-limit 2G --vfs-cache-mode writes 
