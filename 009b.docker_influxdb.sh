
# sudo docker pull influxdb

# sudo docker run -d --name=influxdbV2 -p 8086:8086 influxdb:2

sudo docker start influxdbV2
# -- influxdbV2 is the name of the container

sudo docker update --restart=always b374bab3a8d3

sudo docker update --restart=always b374bab3a8d3



