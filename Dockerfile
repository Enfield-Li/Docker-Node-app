FROM node:lts-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "server.js" ]

# docker build . -t node-web-app:latest
# docker run --name nodeapp -dp 8082:8080 node-web-app:latest 

# docker --help
# docker image
# docker container
# docker image ls
# docker ps
# docker ps --format 'ID\t{{.ID}}\nNAME\t{{.Names}}\nImage\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n'
