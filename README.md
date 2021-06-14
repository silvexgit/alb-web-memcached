# alb-web-memcached

(c) 2021 Ed Silva
All Rights reserved
esilva@silvex.com

Use at your own risk and is provided As-Is without any kind of warranties. 

This Creates an AWS stack in the us-west-2 region consisting of: 
    Application Load Balancer
    Three web servers in three different availability zone (AZ)
    A three node ElastiCache cluster using AWS memcache. 

The user executing this code needs to have AWS keys with full admin (root) access.
It takes about 6 minutes for the stack to be fully deployed, but it takes a bit longer to destroy.

I used a free tier account to avoid being charged to develop this code.
Thus the reason for not providing any auto scaling.

It creates a VPC with public subnets (172.16.33.[1-3] and private subnets 172.16.33.[4-6].
  The public subnets hosts the EC2 instances (Amazon Linux2) with httpd enabled along 
  the PHP 7.3 library to connect to the memcache cluster. It will discover the memcache automatically.
  
  The bash setup-ec2.sh script has all of the steps to configure the EC2s to use the ElastiCache.
  
  I followed this Amazon doc https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/Appendix.PHPAutoDiscoverySetup.Installing.html

  The private subnets host the ElastiCache using three nodes. Placing each node
  in a different (AZ)
  
  Most of the terraform files use vars whenever posible.
    The vars.tf file can be edited to change:
     - The region (SILVEX-REGION)
     - ssh-key (SILVEX-SSH-2020)
     - Image (SILVEX-AMI)
     - EC2 (SILVEX-EC2-TYPE)
     
  Edit the securitygroup.tf file to provide access per your needs BEFORE executing code.
    
  The DNS and endpoints for the ALB, ElastiCache and EC2 are printed after execution of code.
  
  The ALB tests the index.html file located under /var/www/html directory and created in the setup-ec2.sh script
  
  Most of the 'tf' were given a name to reflect their function.
    - pri denotes private
    - pub denotes public
  
  The file scope-of-work.txt has the requirements this code was built from.
  Please read it to perhaps deploy to another cloud provider (Azure, Oracle, Google).
  
Please feel free to email me at esilva@silvex.com for any feedback, questions or concerns.
