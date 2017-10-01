FROM node:6.7.0-wheezy

RUN apt-get update && apt-get install libpcap-dev -y

WORKDIR /opt/mqtt-dasher
RUN mkdir bin
COPY ./bin/mqtt-dasher ./bin/mqtt-dasher
COPY server.js .
COPY README.md .
COPY package.json .

RUN npm install
