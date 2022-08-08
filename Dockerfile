FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "server.js" ]

# docker build . -t node-web-app:latest
# docker run --name nodeapp -dp 8082:8080 node-web-app:latest 