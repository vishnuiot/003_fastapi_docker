## remove all containers
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)
# # remove all images
sudo docker system prune -a   

# sudo docker images -a
# sudo docker ps
# sudo docker stop redis
# sudo docker rmi -f ed3a2af6d0d4
