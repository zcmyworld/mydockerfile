#docker run --name nodejs -i -t nodejs /bin/bash
#每次重启的时候，注意要：
#--1、启动php5-fpm
#--2、启动nginx
#--3、修改hosts
#--4、修改nginx的sendfile配置为off
docker run -d -t -P -p 8224:8224 --name php -v /Users/wuzhicong/Documents/phpproject:/home -v /Users/wuzhicong/Documents/phpproject/sites-enabled:/etc/nginx/sites-enabled php:dev
