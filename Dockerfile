FROM Node:14.21.3
LABEL maintainer address "jhansi"
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
CMD ["node","app"]
EXPOSE 8000
