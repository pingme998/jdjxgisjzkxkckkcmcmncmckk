FROM developeranaz/rc-index:latest
RUN apt install git -y
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD /e.sh

