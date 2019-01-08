FROM node:4.8

# update and install software
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y curl wget git make sudo \
    && apt-get update \
    && apt-get clean

RUN npm install -g yarn

RUN mkdir -p /usr/src/app-sling-web
WORKDIR /usr/src/app-sling-web/sling-web

RUN yarn install

CMD ["yarn", "start"]

EXPOSE 3000
