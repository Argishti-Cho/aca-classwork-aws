#!/bin/bash

# as an argument $1 --vpc $2 --subnet $3 --security group
# should be defined with if statements
# subnets are id, private or public
# security groups are id or name:22:80:443 ...
# key pairs => -id 
# ami (taking) --id (ami-s are ubuntu24 or other os images)
# vpc.sh
#   |
#    -internet gateway igw
#   |
#    -rt
#   |
#    -r
#   |
#    -subnet
#          |
#     create | delete

#  ec2.sh
#      |
#      sg



chmod +x ./utils/create_vpc_ec2.sh

echo "Creating VPC and EC2 instance..."
./utils/create_vpc_ec2.sh
