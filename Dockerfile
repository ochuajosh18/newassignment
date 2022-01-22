FROM node:16.13

RUN mkdir -p /home/joshua
COPY . /home/joshua
CMD ["node", "/home/joshua/server.js"]