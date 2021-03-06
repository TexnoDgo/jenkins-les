#!/usr/bin/env bash

# Update
sudo apt update

# Install java
echo "Start Install Java"
sudo apt install openjdk-11-jre-headless -y
echo "Done Install Java"

# Install jenkins
echo "Start Install Jenkins"
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
echo "Done Install Jenkins"

# View Jenkins start pass
echo "Jenkins Admin Pass:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
