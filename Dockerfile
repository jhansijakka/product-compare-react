FROM nginx
LABEL maintainer address "jhansi"
COPY ./index.html /usr/share/nginx/html
EXPOSE 80
