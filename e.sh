#!/bin/bash
#author https://github.com/developeranaz
mkdir /.config
mkdir /.config/rclone
rc version
wget -O /.config/rclone/rclone.conf "$CONFIG_IN_URL" 
echo $PORT >/PORT
rclone --rcd --rc-serve --rc-addr=0.0.0.0:$(cat /PORT) --config=/.config/rclone/rclone.conf
