#!/bin/bash
#author https://github.com/developeranaz
rc version
#curl $CONFIG_IN_URL >/root/.config/rclone/rclone.conf
wget "$CONFIG_IN_URL" -O /.rclone.conf
wget "$CONFIG_IN_URL" -O /root/.config/rclone/rclone.conf
rc copy /usr/bin/.con/donate_developeranaz.txt MEGA:
echo "$template" >.template
cat .template |sed 's/dark/0/g' |sed 's/light/1/g' >.darklight
if [ $(cat .darklight) -eq 0 ]
then
    echo "Theme:Dark"
    thetheme="/usr/bin/.con/1.html"
else
    echo "Theme:Light"
    thetheme="/usr/bin/.con/0.html"
fi
#rc auth
echo "$indexauthentication" >.yesno
cat .yesno |sed 's/false/0/g' |sed 's/true/1/g' >.auth
if [ $(cat .auth) -eq 0 ]
then
    echo "no password, hence unautheticated index"
    theindexpassword=''
    theindexusername=''
else
    echo "oh! password, hence authenticated index"
    theindexpassword="$MEGApassword"
    theindexusername="$MEGAusername"
fi

rc serve webdav MEGA: --template="$thetheme" --addr :$PORT --buffer-size 256M --dir-cache-time 12h --vfs-read-chunk-size 256M --vfs-read-chunk-size-limit 2G --vfs-cache-mode writes --user $theindexusername --pass $theindexpassword 
