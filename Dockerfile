FROM node:13-alpine

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

EXPOSE 3000

RUN mkdir -p /home/app

COPY ./app /home/app

WORKDIR /home/app

RUN yarn;

CMD ["node", "server.js"]

