### working version 2.0 of influxdb
docker run -d --name=inflxdb -p 8086:8086 influxdb:2

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

docker run -d --name=inflxdb -p 8086:8086 influxdb:2

docker run \
    -p 8086:8086 \
    -v "$PWD/data:/var/lib/influxdb2" \
    -v "$PWD/config:/etc/influxdb2" \
    influxdb:2

docker start 2ed9c364e9d2
docker start influxdb
2a3a709b36e2
sudo docker update --restart=always b4355848b856
sudo docker update --restart=always 4f2ba943b1de

sudo docker update --restart=always influxdb
sudo docker update --restart=always grafana/grafana



