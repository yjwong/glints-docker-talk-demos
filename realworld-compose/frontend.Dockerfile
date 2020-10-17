FROM node:12-alpine

WORKDIR /app

ADD package.json yarn.lock /app/
RUN yarn install

ADD . /app
RUN sed -i 's#"https://conduit.productionready.io/api"#"http://localhost:4000"#g' /app/src/common/config.js

CMD [ "yarn", "serve" ]
EXPOSE 8080
