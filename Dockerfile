FROM node:16.13-slim

ARG DATABASE_URL
ARG PORT
EXPOSE 3005

WORKDIR /relayer
ADD . /relayer

ENV DATABASE_URL=${DATABASE_URL}
ENV PORT=${PORT}

RUN yarn install
RUN yarn build

CMD yarn start
