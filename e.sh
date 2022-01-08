#!/bin/bash
#author https://github.com/developeranaz
mkdir /.config
mkdir /.config/rclone
rc version
wget -O rclone.conf "$CONFIG_IN_URL" 
echo $PORT >/PORT
rclone --rcd --rc-serve --rc-addr=0.0.0.0:$(cat /PORT) --config=rclone.conf
