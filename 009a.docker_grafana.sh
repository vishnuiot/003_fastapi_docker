##### Method 1: Name a container as grafana and restart the same with the container name
##step 1 initialize grafana & run grafana |step 2&3 run grafana
sudo docker run -d --name grafana -p 3000:3000 grafana/grafana
sudo docker update --restart=always grafana
sudo docker start grafana


## step 4 stop grafana
# sudo docker stop grafana

##### Method 2: 
#step 1 : Install and run Grafana
sudo docker run -d --name=grafana -p 3000:3000 grafana/grafana
##  step 3 run grafana
sudo docker start grafana
## step 4 stop grafana
# sudo docker stop grafana


## additional commands
# sudo docker images -a
sudo docker run -d --name=grafana -p 3000:3000 grafana/grafana
sudo docker update --restart=always dc721f930e16
sudo docker update --restart=always 2ed9c364e9d2   
sudo docker update --restart=always grafana


