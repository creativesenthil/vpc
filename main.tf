provider "aws" {
  region = "ap-south-1"  # Specify the AWS region
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"  # CIDR block for the VPC
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "simple-vpc"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "10.0.1.0/24"  # Subnet CIDR block
  availability_zone = "ap-south-1"    # Specify the availability zone
  tags = {
    Name = "simple-subnet"
  }
}
