FROM ngnix:alpine
COPY note.html  /usr/share/ngnix/html
COPY docker.png /usr/share/ngnix/html     
RUN rm -rf /usr/share/mginx/html/index.html \
    && ln -s note.html /usr/share/mginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
