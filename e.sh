#!/bin/bash
#author https://github.com/developeranaz
mkdir /.config
mkdir /.config/rclone
rc version
curl -L "$CONFIG_IN_URL" > "/.config/rclone/rclone.conf"
echo $PORT >/PORT
rclone --rcd --rc-serve --rc-addr=0.0.0.0:$(cat /PORT)
