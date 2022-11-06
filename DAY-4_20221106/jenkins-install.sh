#!/bin/bash

# Setup New Hostname
hostnamectl set-hostname "jenkins.cloudbinary.io"

# Configure New Hostname as part of /etc/hosts file 
echo "`hostname -I | awk '{ print $1}'` `hostname`" >> /etc/hosts

# Update Ubuntu Repository 
apt-get update 

# Download, & Install Utility Softwares 
apt-get install git wget unzip curl tree -y 

# Download, Install Java 11
sudo apt-get install openjdk-11-jdk -y

# Backup the Environment File
sudo cp -pvr /etc/environment "/etc/environment_$(date +%F_%R)"

# Create Environment Variables 
echo "JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/" >> /etc/environment

# Download, Install Java 11
sudo apt-get install maven -y

# Backup the Environment File
sudo cp -pvr /etc/environment "/etc/environment_$(date +%F_%R)"

# Create Environment Variables 
#echo "MAVEN_HOME=/usr/bin/maven" >> /etc/environment

# Compile the Configuration 
source /etc/environment

# Add Jenkins Repository 
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

# Adding the Jenkins Remote Repository URL in Ubuntu Local Repository Configuration file 
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/' > /etc/apt/sources.list.d/jenkins.list

# Update the Repository on Ubuntu 18.04
sudo apt-get update 

# Download, Install Jenkins 
sudo apt-get install jenkins -y

# To Restart SSM Agent on Ubuntu 
sudo systemctl restart snap.amazon-ssm-agent.amazon-ssm-agent.service


# Verify the jenkins service 
# sudo systemctl status jenkins.service

# Enable Jenkins Daemon/Service at Boot
# sudo systemctl enable jenkins.service

# Restart the Jenkins Daemon/Service 
# sudo systemctl restart jenkins.service

# Usig Process Status Command 
# ps -aux | grep jenkins 
