#!/bin/bash
#author https://github.com/developeranaz
rc version
curl -L "$CONFIG_IN_URL" > $(rclone config file |grep rclone.conf)
echo $PORT >/PORT
rclone --rcd --rc-serve --rc-addr=0.0.0.0:$(cat /PORT)
