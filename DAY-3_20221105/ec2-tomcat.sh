#!/bin/bash

aws ec2 run-instances \
--image-id ami-08c40ec9ead489470 \
--instance-type t2.micro \
--count 1 \
--subnet-id subnet-2db46060 \
--security-group-ids sg-0d8d200bc6ab17c0d \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Tomcat},{Key=Environment,Value=Development},{Key=ProjectName,Value=CloudBinary},{Key=ProjectID,Value=20221105},{Key=EmailID,Value=devops@cloudbnary.io},{Key=MobileNo,Value=+919908823070}]' \
--key-name cloudbinary-keys \
--user-data file://tomcat-install.txt