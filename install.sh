#!/bin/bash 
#
#### Variables
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#### Install dependencies
sudo apt-get update && sudo apt-get upgrade -y
sudo apt install -y \
    zip unzip
sudo wget https://releases.hashicorp.com/terraform/0.13.0/terraform_0.13.0_linux_amd64.zip
unzip https://releases.hashicorp.com/terraform/0.13.0/terraform_0.13.0_linux_amd64.zip

#### Deploy terraform
echo Terraform Initialization
terraform init

echo Terraform Planning
terraform plan

echo Terraform Apply Configurations
terraform apply
