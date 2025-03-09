sudo apt update
sudo apt install docker.io -y

sudo apt update
sudo curl -L "https://github.com/docker/compose/releases/download/v2.33.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo usermod -aG docker $USER && newgrp docker

sudo apt update
sudo apt install openssl -y

sudo apt update
openssl req -x509 -nodes -days 90 -newkey rsa:2048 -keyout nginx-selfsigned.key -out nginx-selfsigned.cert
