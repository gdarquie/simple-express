FROM node:current-buster-slim
RUN npm install -g npm@9.6.7

RUN mkdir /srv/demo
WORKDIR /srv/demo

COPY package*.json ./
RUN npm install

COPY . .
EXPOSE 8888
CMD [ "node", "app.js" ]
