FROM ubuntu:latest
RUN apt update
RUN apt install unzip curl -y
RUN curl https://rclone.org/install.sh | bash
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD /e.sh

