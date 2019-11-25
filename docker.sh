docker rm -f thrid-server
docker rmi qianchun27/thrid-server:1.0.0
docker build -t qianchun27/thrid-server:1.0.0 -f Dockerfile .
docker run --privileged -t -d -p 80:80 --name thrid-server qianchun27/thrid-server:1.0.0 /usr/sbin/init;
docker network connect wind_net thrid-server
#docker exec -it thrid-server /bin/bash
