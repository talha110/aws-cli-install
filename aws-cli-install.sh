#!/bin/bash
#Checking Operating System Details
OS_NAME=$(head -n1 /etc/os-release | cut -f2 -d '='  | tr -d '\"') && export OS=${OS_NAME};

echo "Operating System is:echo"${OS};

#Installing AWS-CLI if OS is Ubuntu
if [ $OS == "Ubuntu" ]; then apt update -y && apt install awscli -y; fi;

#Installing AWS-CLI if OS is CentOS
if [ $OS == "CentOS Linux" ]; then yum update -y && yum install awscli -y; fi;
