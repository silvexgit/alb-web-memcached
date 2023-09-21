# Internet VPC
resource "aws_vpc" "silvex-vpc-172-33" {
  cidr_block           = "172.33.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  tags = {
    Name = "silvex-vpc-172-33"
  }
}

