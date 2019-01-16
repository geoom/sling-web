FROM elixir:1.7.4

# update and install software
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y curl wget git make sudo \
    && apt-get update \
    && apt-get clean

# install Node.js (>= 8.0.0) and NPM in order to satisfy brunch.io dependencies
# See https://hexdocs.pm/phoenix/installation.html#node-js-5-0-0
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && sudo apt-get install -y inotify-tools nodejs

RUN mkdir -p /usr/src/app-sling-web
WORKDIR /usr/src/app-sling-web/sling-web

EXPOSE 3000