#docker run --name nodejs -i -t nodejs /bin/bash
docker run -d -t -P -p 3306:3306 \
--name mysql \
--link php:php \
-v /Users/wuzhicong/Documents/mysql_docker:/home \
mysql:dev 
