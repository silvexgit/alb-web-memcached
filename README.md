# alb-web-memcached


© 2021 [Ed Silva](esilva@silvex.com).
All Rights reserved



Use at your own risk and provided As-Is without any kind of warranties. 

This Creates an AWS stack in the us-west-2 region consisting of: 

    - Application Load Balancer
    - Three web servers in three different availability zones (AZ)
    - A three node ElastiCache cluster with AWS memcache. 

The user executing this code needs to have AWS keys with full admin (root) access.
It takes about 6 minutes for the stack to be fully deployed, but it takes a bit longer to destroy.

I used a free tier account to avoid being charged to develop this code.
Thus the reason for not providing any auto scaling.

It creates a VPC with public subnets (172.16.33.[1-3] and private subnets 172.16.33.[4-6].
  The public subnets hosts the EC2 instances (Amazon Linux2) with httpd enabled along 
  the PHP 7.3 library to connect to the memcache cluster. It will discover the memcache automatically.
  
  The bash setup-ec2.sh script has all of the steps to configure the EC2s to use the ElastiCache.
  
  I followed this Amazon doc: [PHP AutoDiscoverySetup](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/Appendix.PHPAutoDiscoverySetup.Installing.html).
  

  The private subnets host the ElastiCache using three nodes. Placing each node
  in a different (AZ)
  
  Most of the terraform files use vars whenever possible.
    The vars.tf file can be edited to change:
    
     - The region (SILVEX-REGION) US-West-2
     - ssh-key (SILVEX-SSH-2020) I used existing key. 
     - Image (SILVEX-AMI) Stock AMI Linux2
     - EC2 (SILVEX-EC2-TYPE) t2.micro.
     
  Edit the *securitygroup.tf* file to provide access per your needs **BEFORE** executing code.
    
  The DNS and endpoints for the ALB, ElastiCache and EC2 are printed after execution of code.
  
  The ALB tests the index.html file located under /var/www/html directory and created in the *setup-ec2.sh* script
  
  Most of the Terraform *'tf'* files were given a name to reflect their function.
  
    - pri denotes private
    - pub denotes public (internet facing)
    - rt denotes route
    - sn denotes subnet
    - tg denotes target group
    - ec denotes elastic cluster
    - alb denotes application load balancer
  
  The file *scope-of-work.txt* has the requirements this code was built from.
  Please read it to perhaps deploy to another cloud provider (Azure, Oracle, Google).
  
Please feel free to email me at esilva@silvex.com for any feedback, questions or concerns.
