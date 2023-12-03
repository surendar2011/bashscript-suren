#!/bin/bash

# Update the package list
sudo apt-get update

# Install Java
sudo apt-get install openjdk-11-jre -y

# Add the Jenkins repository to your system
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -

# Add the Jenkins repository to your sources list
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update the package list
sudo apt-get update

# Install Jenkins
sudo apt-get install jenkins -y

# Start the Jenkins service
sudo systemctl start jenkins

# Check the status of the Jenkins service
sudo systemctl status jenkins
