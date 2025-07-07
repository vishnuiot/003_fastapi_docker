
docker run -d --name influxdb -p 8086:8086 -p 8083:8083 \
    -e INFLUXDB_ADMIN_ENABLED=true \
    influxdb

sudo docker update --restart=always influxdb


### working version 2.0 of influxdb
docker run -d --name=influxdb -p 8086:8086 influxdb:2

docker run -d -p 8086:8086 --name influxdb influxdb:3.2.1-core
docker start influxdb


# sudo docker pull influxdb NAMED_IMAGE:TAG
## docker run = pulls and starts a new container
## docker stop e07 = stops a container starting with the specified image id
# sudo docker run -d --name=inflxdbv2.0 -p 8086:8086 influxdb:2
## step 1: pull image
# sudo docker run influxdb 
#// starts container with image name influxdb
# step 2: start container
docker run -d --name=inflxdb -p 8086:8086 influxdb:2
# -- influxdb is the name of the container
sudo docker update --restart=always 78950606fd29  // specify the container id here

## list containers
docker container ls -q  




