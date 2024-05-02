FROM node:14.21.3
LABEL maintainer address "jhansi"
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
CMD ["node","app"]
COPY ./ /var/www/html
CMD ["apachectl","-D","FOREGROUND"]
EXPOSE 80
