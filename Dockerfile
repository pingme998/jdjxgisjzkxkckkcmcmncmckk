FROM developeranaz/rc-index:latest
COPY e.sh /e.sh
RUN chmod +x /e.sh
CMD e.sh

