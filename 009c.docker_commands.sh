# sudo docker images -a
# sudo docker ps
# sudo docker stop 13c599907d8
# sudo docker rmi -f 13c599907d8

# docker update --restart=<policy> <container_id_or_name>
sudo docker update --restart=always b374bab3a8d3
sudo docker update --restart=always f73f5bc5ffe3

# sudo systemctl start docker
# sudo systemctl enable docker

# docker update --restart=<policy> <container_id_or_name>
sudo docker update --restart=always b374bab3a8d3
sudo docker update --restart=always f73f5bc5ffe3
## remove all containers
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)
# # remove all images
# sudo docker system prune


