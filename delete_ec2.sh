#!/bin/bash -ex

# delete all -15
# Delete custom security group
aws ec2 delete-security-group \
    --group-id $AWS_CUSTOM_SECURITY_GROUP_ID || true

## Delete internet gateway
aws ec2 detach-internet-gateway \
    --internet-gateway-id $AWS_INTERNET_GATEWAY_ID \
    --vpc-id $AWS_VPC_ID || true

aws ec2 delete-internet-gateway \
    --internet-gateway-id $AWS_INTERNET_GATEWAY_ID || true

## Delete the custom route table
aws ec2 disassociate-route-table \
    --association-id $AWS_ROUTE_TABLE_ASSOID || true

aws ec2 delete-route-table \
    --route-table-id $AWS_CUSTOM_ROUTE_TABLE_ID || true

## Delete the public subnet
aws ec2 delete-subnet \
    --subnet-id $AWS_SUBNET_PUBLIC_ID || true

## Delete the vpc
aws ec2 delete-vpc \
    --vpc-id $AWS_VPC_ID

sed -i  "/$AWS_VPC/d" $createVpc