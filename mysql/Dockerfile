FROM ubuntu:14.04
MAINTAINER Zhicong

ADD build/sources.list /etc/apt/sources.list

RUN apt-get update

RUN echo 'mysql-server-5.5 mysql-server/root_password password root' | debconf-set-selections
RUN echo 'mysql-server-5.5 mysql-server/root_password_again password root' | debconf-set-selections
RUN apt-get install -y mysql-server

#RUN echo "mysql-server-5.5 mysql-server/root_password password root" > /tmp/mysql.preseed
#RUN echo "mysql-server-5.5 mysql-server/root_password_again password root" >> /tmp/mysql.preseed
#RUN cat /tmp/mysql.preseed | debconf-set-selections
#RUN rm /tmp/mysql.preseed
#RUN apt-get install -y mysql-server

