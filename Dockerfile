FROM nginx
COPY ./index.html /usr/nginx/html
EXPOSE 8080
