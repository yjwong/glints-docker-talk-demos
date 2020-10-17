FROM node:alpine

WORKDIR /app

ADD package.json package-lock.json /app/
RUN npm install

ADD . /app

CMD [ "node", "app.js" ]
EXPOSE 3000
