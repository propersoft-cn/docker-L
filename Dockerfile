FROM mhart/alpine-node:latest

MAINTAINER Alpha Hinex <AlphaHinex@gmail.com>

# RUN echo "Asia/Shanghai" > /etc/timezone
# RUN dpkg-reconfigure -f noninteractive tzdata

# RUN apt-get -q update
# RUN apt-get -qy install git-core redis-server
RUN apk add --no-cache make g++ python git

WORKDIR /home
RUN git clone https://github.com/propersoft-cn/L.git

WORKDIR /home/L
RUN npm install

CMD bin/hubot --adapter slack
