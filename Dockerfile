FROM node:16.13

RUN mkdir -p /home/joshua
COPY . /home/joshua
CMD ["node", "/home/joshua/server.js"] 
WORKDIR /app

COPY package*.json ./

COPY package-lock*.json ./

RUN npm install

COPY . . 

EXPOSE 30022:30022

CMD ["node", "server.js"] 