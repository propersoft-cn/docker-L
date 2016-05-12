FROM mhart/alpine-node:latest

MAINTAINER Alpha Hinex <AlphaHinex@gmail.com>

RUN apk add --no-cache tzdata
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/Shanghai" > /etc/timezone
RUN apk del tzdata

# RUN apt-get -q update
# RUN apt-get -qy install git-core redis-server

RUN apk add --no-cache make g++ python git supervisor

RUN adduser -h /hubot -D hubot
USER hubot

WORKDIR /hubot
RUN git clone https://github.com/propersoft-cn/L.git

WORKDIR /hubot/L
RUN npm install

# CMD bin/hubot --adapter slack
COPY l.conf /etc/supervisor/conf.d/l.conf