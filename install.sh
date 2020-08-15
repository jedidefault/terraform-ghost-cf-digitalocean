#!/bin/bash 

# ### Variables
# DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
# ### Install dependencies
# sudo apt-get update && sudo apt-get upgrade -y
# sudo apt install -y \
#     zip unzip
# sudo wget https://releases.hashicorp.com/terraform/0.13.0/terraform_0.13.0_linux_amd64.zip
# unzip terraform_0.13.0_linux_amd64.zip

#### Deploy terraform
##

echo Upgrading Terraform
# terraform 0.13upgrade .

echo Terraform Global Environment
cp terraform /usr/bin/terraform

echo Terraform Initialization
sudo terraform init
sleep 3
echo Terraform Planning
sudo terraform plan
sleep 3
echo Terraform Apply Configurations
sudo terraform apply
