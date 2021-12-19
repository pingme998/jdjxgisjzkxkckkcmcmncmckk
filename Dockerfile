FROM developeranaz/rc-index:latest
RUN d3v install git curl -y
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD /e.sh

