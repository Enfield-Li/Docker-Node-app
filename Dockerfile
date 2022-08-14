FROM node:lts-alpine

RUN npm install -g nodemon

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

# CMD [ "node", "server.js" ]
CMD ["npm", "run", "dev"]

# docker build . -t node-web-app:nodemon
# docker run --name nodeapp -dp 8082:8080 node-web-app:nodemon 
# docker run --name testvolumn -p 8081:8080 --rm -v D:\desktop\learn\docker\try\node:/usr/src/app node-web-app:nodemon 
# docker start nodeapp

# docker --help
# docker image
# docker container
# docker image ls
# docker ps
# docker ps --format 'ID\t{{.ID}}\nNAME\t{{.Names}}\nImage\t{{.Image}}\nPORTS\t{{.Ports}}\nCOMMAND\t{{.Command}}\nCREATED\t{{.CreatedAt}}\nSTATUS\t{{.Status}}\n'
