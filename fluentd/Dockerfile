FROM ubuntu:14.04
MAINTAINER Zhicong

ADD build/sources.list /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y curl

RUN apt-get install -y vim

RUN curl -L https://toolbelt.treasuredata.com/sh/install-ubuntu-trusty-td-agent2.sh | sh