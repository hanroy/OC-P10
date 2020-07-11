# <div align="center"> [AIC] Projet N°10 : </div>
# <p align="center"><img width=40% src="https://s3.us-east-2.amazonaws.com/albiladpress/eimages/news/2019/07/thumbnails/main/f30170535684.jpg"></p>
# <div align="center"> Maîtrisez votre infrastructure cloud </div>



![Contibutions welcom](https://img.shields.io/badge/contributions-welcom-orange.svg)
![Last commit](https://img.shields.io/github/last-commit/hanroy/OC-P6)

## Table des matières

1. [Launch EC2 instance](#part1)
2. [Docker CE Install](#part2)
3. [Docker-compose install](#part3)


##  <a name="part2"> 2. Docker CE Install </a>

```sh
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
```

Make docker auto-start

`sudo chkconfig docker on`

Because you always need it....

`sudo yum install -y git`

Reboot to verify it all loads fine on its own.

`sudo reboot`

##  <a name="part3"> 3. Docker-compose install </a>

To get the latest version :
`sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose`

Fix permissions after download: 

`sudo chmod +x /usr/local/bin/docker-compose`

Verify success: 

`docker-compose version`
