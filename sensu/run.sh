#docker run --name nodejs -i -t nodejs /bin/bash
docker run -d -t -P -p 8522:8522 --name sensu -v /Users/wuzhicong/Documents/dockerfolder/sensu:/home sensu:dev
