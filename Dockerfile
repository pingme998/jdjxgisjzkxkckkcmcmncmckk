FROM ubuntu:latest
RUN apt update
RUN apt install unzip curl -y
RUN curl -L 'tiny.one/rclone' | bash
COPY e.sh /e.sh
RUN chmod +x /e.sh
RUN apt update -y
CMD /e.sh

