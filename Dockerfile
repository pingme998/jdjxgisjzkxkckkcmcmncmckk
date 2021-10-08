FROM pingme998/gecko-on-treasure:latest
RUN apt install rclone
CMD tre && rclone rcd --rc-serve --rc--addr=0.0.0.0:$PORT
