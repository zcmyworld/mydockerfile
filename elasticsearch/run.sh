#docker run --name nodejs -i -t nodejs /bin/bash
docker run -d -t -P -p 9200:9200 --name es -v /Users/wuzhicong/Documents/elasticsearch:/home es:dev
