#!/bin/bash

echo "update os"
sudo yum update -y

echo "install docker"
sudo yum install docker -y
sudo service docker start
sudo systemctl enable docker

echo "add ec2-user to the Docker users group"
#Doing this allows you to run Docker commands without needing to invoke sudo every time.
sudo usermod -a -G docker ec2-user

echo "download and apply the docker-compose package"
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo "Set the execution permissions docker-compose"
sudo chmod +x /usr/local/bin/docker-compose

echo "install wordpress"
mkdir wordpress && cd wordpress
sudo wget https://raw.githubusercontent.com/hanroy/OC-P10/master/docker/Dockerfile
sudo https://raw.githubusercontent.com/hanroy/OC-P10/master/docker/docker-compose.yml
docker-compose up -d


