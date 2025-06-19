## Step 1 install grafana image
# docker pull grafana/grafana

##step 2 initialize grafana
# sudo docker run -d --name=grafana -p 3000:3000 grafana/grafana

##  step 3 run grafana
sudo docker start grafana

## step 4 stop grafana
# sudo docker stop grafana


## additional commands
# sudo docker images -a