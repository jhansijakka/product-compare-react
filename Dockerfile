FROM node:14
LABEL maintainer address "jhansi"
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
CMD npm start
EXPOSE 80
