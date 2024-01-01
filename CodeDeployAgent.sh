#!/bin/bash
# Update packages
sudo apt-get update
# Install dependencies
sudo apt-get install ruby-full wget -y
# Download the CodeDeploy agent
cd /tmp
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
# Make the install script executable
chmod +x ./install
# Run the install script
sudo ./install auto
# Check the status of the CodeDeploy agent
sudo service codedeploy-agent status