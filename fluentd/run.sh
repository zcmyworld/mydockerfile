#docker run --name nodejs -i -t nodejs /bin/bash
docker run -d -t -P -p 8300:8300 --name fluentd -v /Users/wuzhicong/Documents/fluentd:/home fluentd:dev
