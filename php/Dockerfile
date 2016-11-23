FROM ubuntu:14.04

MAINTAINER zhicong

ADD ext/sources.list /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y software-properties-common

RUN add-apt-repository ppa:ondrej/php

ADD ext/key /
RUN apt-key add /key
RUN rm /key

RUN apt-get update

RUN apt-get install -y vim

RUN apt-get install -y curl

RUN apt-get install -y nginx

RUN apt-get install -y git

RUN apt-get install -y wget

# php
RUN apt-get install -y php5.6-dev
RUN apt-get install -y php5.6-cli
RUN apt-get install -y php5.6-fpm

RUN mkdir /run/php
RUN touch /run/php/php5.6-fpm.pid

# mysql-php
RUN apt-get install -y php5.6-mysql

# xdebug
ADD ext/xdebug-2.4.0.tgz /
RUN cd xdebug-2.4.0 && phpize && ./configure --enable-xdebug && make && make install
RUN echo "[XDEBUG]\nzend_extension=xdebug.so\nxdebug.remote_enable=1\nxdebug.remote_autostart=1\nxdebug.remote_host=10.0.1.185\nxdebug.remote_port=9001\nxdebug.remote_log="/tmp/xdebug.log"" > /etc/php/5.6/mods-available/xdebug.ini
RUN ln -s /etc/php/5.6/mods-available/xdebug.ini /etc/php/5.6/fpm/conf.d/xdebug.ini
RUN ln -s /etc/php/5.6/mods-available/xdebug.ini /etc/php/5.6/cli/conf.d/xdebug.ini

# sshd
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo "root:pwd" | chpasswd
RUN sed -i "s/^PermitRootLogin without-password/PermitRootLogin yes/" /etc/ssh/sshd_config

## phpunit
ADD ext/phpunit.phar /
RUN cd / && chmod +x phpunit.phar
RUN cd / && mv phpunit.phar /usr/local/bin/phpunit
