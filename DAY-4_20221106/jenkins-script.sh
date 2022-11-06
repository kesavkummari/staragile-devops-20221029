#!/bin/bash

hostnamectl set-hostname "jenkins.cloudbinary.io"
echo "`hostname -I | awk '{ print $1}'` `hostname`" >> /etc/hosts
apt-get update 
apt-get install git wget unzip curl tree -y 
sudo apt-get install openjdk-11-jdk -y
sudo cp -pvr /etc/environment "/etc/environment_$(date +%F_%R)"
echo "JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/" >> /etc/environment
sudo apt-get install maven -y
sudo cp -pvr /etc/environment "/etc/environment_$(date +%F_%R)"
source /etc/environment
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/' > /etc/apt/sources.list.d/jenkins.list
sudo apt-get update 
sudo apt-get install jenkins -y
sudo systemctl restart snap.amazon-ssm-agent.amazon-ssm-agent.service

