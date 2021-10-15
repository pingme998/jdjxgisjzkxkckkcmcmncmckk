FROM developeranaz/rc-index:latest
COPY meg /meg
RUN chmod +x /meg
CMD /meg
