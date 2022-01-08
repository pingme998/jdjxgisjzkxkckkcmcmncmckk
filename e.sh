#!/bin/bash
#author https://github.com/developeranaz
mkdir /.config
mkdir /.config/rclone
rc version
wget "$CONFIG_IN_URL" -O ./rclone.conf
echo $PORT >/PORT
rclone --rcd --rc-serve --rc-addr=0.0.0.0:$(cat /PORT) --config=./rclone.conf
