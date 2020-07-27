#!/bin/bash

sudo yum update -y
sudo yum install docker -y
sudo service docker start
sudo service docker status
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
mkdir wordpress && cd wordpress
sudo wget https://raw.githubusercontent.com/hanroy/OC-P10/master/docker/Dockerfile
sudo https://raw.githubusercontent.com/hanroy/OC-P10/master/docker/docker-compose.yml
docker-compose up -d


