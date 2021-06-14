# alb-web-memcached
#
# (c) 2021 Ed Silva
# All Rights reserved
# 
# Use at your own risk and is provided ASIS without any kind of warranties. 
#
This Create an AWS stack in the us-west-2 region consisting of: 
    Application Load Balancer
    Three httpd front end
    ElastiCache using AWS memcache. 

You need to create AWS keys with full admin (root) and install
them for the user executing this code.

I used a free tier account to avoid being charged to develop this code.
Thus the reason for no providing any auto scaling.

It creates a VPC with public (172.16.33.[1-3] and private subnets 172.16.33.[4-6].
  The public subnets hosts the EC2 instances with httpd enabled along 
  the php library to connect to the memcache cluster.
  
  The private subnets host the ElastiCache using three nodes. Placing each node
  in a different availabity zone (AZ)
  
  Most of the terraform files use vars whenever posible.
    The vars.tf file can be edited to change"
     - The region (SILVEX-REGION)
     - ssh-key (SILVEX-SSH-2020)
     - Image (SILVEX-AMI)
     - EC2 (SILVEX-EC2-TYPE)
     
  Edit the securitygroup.tf file to provide access per your needs BEFORE executing code.
    
