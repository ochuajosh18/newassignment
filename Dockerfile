FROM node:16.13

WORKDIR /app

COPY package*.json ./

COPY package-lock*.json ./

RUN npm install

COPY . . 

EXPOSE 30022

CMD ["node", "server.js"] 