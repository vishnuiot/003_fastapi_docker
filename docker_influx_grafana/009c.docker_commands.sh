sudo gpasswd -a $(whoami) docker
#>> Adding user "username" to group docker
sudo adduser vishnu $(whoami)dialout
sudo usermod -aG docker $(whoami)
#reboot
##### Image commangs
# sudo docker images -a
# sudo docker rmi -f ed3a2af6d0d4
# sudo docker rmi influxdb:2 (latest)

##### Container commands
# sudo docker ps
# sudo docker stop 
# sudo docker run influxdb
# docker container ls -q // 


## docker run = starts a new container with a command
## docker stop e07 = stops a container starting with the specified image id
# sudo systemctl start docker
# sudo systemctl enable docker

# docker update --restart=<policy> <container_id_or_name>
sudo docker update --restart=always b374bab3a8d3
sudo docker update --restart=always f73f5bc5ffe3
## remove all containers
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)
# # remove all images
sudo docker system prune -a

#docker pull postgres:14.18-bookworm
docker run postgres:14.18-bookworm
#docker run -d --name redis redis:latest
docker run -d --name postgres postgres:14.18-bookworm -e POSTGRES_PASSWORD=11111111
docker images -a



