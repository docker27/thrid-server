#docker rm -f mysql
docker rmi qianchun27/mysql:5.7.27
docker build -t qianchun27/mysql:5.7.27 -f Dockerfile .
#docker run --privileged -t -d -p 3306:3306 --name mysql_lastest qianchun27/mysql:5.7.27 /usr/sbin/init;
#docker network connect wind_net mysql
#docker exec -it mysql /bin/bash
