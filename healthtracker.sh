#!/bin/bash

###################################
#Author:Shantanu
#Date:15.02.2024
#Version:v1
#This script will report usage of AWS resources
###################################

#list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

#list ec2 instances
echo "Print list of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


#list lambda functions
echo "Print list of lambda functions"
aws lambda list-functions

#list IAM Users
echo "Print list of IAM Users"
aws iam list-users



