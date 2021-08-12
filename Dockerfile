FROM  nginx:alpine
COPY  note.html  /usr/share/nginx/html/ 
COPY  docker.png /usr/share/nginx/html/     
RUN   rm -rf /usr/share/nginx/html/index.html \
      && ln -s /usr/share/nginx/html/note.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
