FROM ubuntu:14.04
MAINTAINER Zhicong

ADD build/sources.list /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y xz-utils
RUN apt-get install -y make
RUN apt-get install -y gcc
RUN apt-get install -y g++
RUN apt-get install -y vim
RUN apt-get install -y curl

RUN apt-get install -y python

RUN mkdir nodejs
RUN cd nodejs && wget http://nodejs.org/dist/v0.10.28/node-v0.10.28.tar.gz
RUN cd nodejs && tar -xvf node-v0.10.28.tar.gz
RUN cd nodejs/node-v0.10.28/ && ./configure
RUN cd nodejs/node-v0.10.28/ && make
RUN cd nodejs/node-v0.10.28/ && make install

