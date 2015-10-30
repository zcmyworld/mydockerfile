#docker run --name nodejs -i -t nodejs /bin/bash
docker run -d -t -P -p 3000:3000 \
-p 5858:5858 \
-p 8080:8080 \
-p 7259:7259 \
--name nodejs \
--link php:php \
-v /Users/wuzhicong/Documents/myproject:/home \
nodejs:dev
