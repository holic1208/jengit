#!/bin/bash
amazon-linux-extras install -y docker
systemctl start docker
docker pull jenkins/jenkins:lts
chmod 777 /test
sudo docker run -itd -p 60800:8080 -v /test:/var/jenkins_home --name j1 jenkins/jenkins:lts
sudo docker exec j1 cat  /var/jenkins_home/secrets/initialAdminPassword
