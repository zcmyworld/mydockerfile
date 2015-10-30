#docker run --name nodejs -i -t nodejs /bin/bash
docker run -d -t -P -p 9002:9002 --name supervisor -v /Users/wuzhicong/Documents/phpproject:/home supervisor:dev
