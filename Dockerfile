FROM developeranaz/rc-index:latest
COPY e2 /usr/bin/e2
RUN chmod +x /usr/bin/e2
CMD e2
