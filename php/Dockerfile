FROM ubuntu:14.04
MAINTAINER Zhicong

ADD build/sources.list /etc/apt/sources.list
#ADD build/resolv.conf /etc/resolv.conf

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y vim
RUN apt-get install -y php5-fpm
RUN apt-get install -y php5-cli

# php5-dev 包含了很多php开发工具，如：phpize，php-pear

RUN apt-get install -y curl

# 全局安装composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

# php5-dev 包含了很多php开发工具，如：phpize，php-pear
RUN apt-get install -y php5-dev

RUN apt-get install -y nginx

RUN composer global require "phpunit/phpunit=4.8.*"
RUN echo "PATH=$PATH:~/.composer/vendor/bin" > ~/.bashrc

# xdebug
RUN wget http://xdebug.org/files/xdebug-2.3.3.tgz
RUN tar -xzf xdebug-2.3.3.tgz
RUN cd xdebug-2.3.3 && phpize && ./configure --enable-xdebug && make && make install
RUN echo "zend_extension=xdebug.so" > /etc/php5/mods-available/xdebug.ini
RUN ln -s /etc/php5/mods-available/xdebug.ini /etc/php5/fpm/conf.d/xdebug.ini
RUN ln -s /etc/php5/mods-available/xdebug.ini /etc/php5/cli/conf.d/xdebug.ini

# curl
RUN apt-get install -y php5-curl

# php5-mysql
RUN apt-get install -y php5-mysql

# php5-mcrypt
RUN apt-get install -y php5-mcrypt
RUN ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/fpm/conf.d/mcrypt.ini
RUN ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/cli/conf.d/mcrypt.ini


# memcached
RUN apt-get install -y memcached
RUN apt-get install -y php5-memcached