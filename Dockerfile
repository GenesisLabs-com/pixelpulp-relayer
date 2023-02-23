FROM node:16.13-slim

ARG DATABASE_URL
EXPOSE 3005

WORKDIR /relayer
ADD . /relayer

RUN yarn install
RUN yarn build

CMD yarn start
