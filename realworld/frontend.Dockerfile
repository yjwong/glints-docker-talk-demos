FROM node:12-alpine

WORKDIR /app

ADD package.json yarn.lock /app/
RUN yarn install

ADD . /app
RUN sed -i "s#'https://conduit.productionready.io/api'#'http://localhost:4000'#g" /app/config/environment.js

CMD [ "yarn", "start" ]
EXPOSE 4200
