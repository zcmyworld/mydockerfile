FROM ubuntu:14.04
MAINTAINER Zhicong

ADD build/sources.list /etc/apt/sources.list

RUN apt-get update

#tools
RUN apt-get install -y vim
RUN apt-get install -y curl



#Java
RUN apt-get install -y default-jre
RUN apt-get install -y default-jdk



#elasticsearch
RUN curl -L -O https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-1.5.2.tar.gz
RUN tar -xvf elasticsearch-1.5.2.tar.gz