resource "aws_vpc" "vpc_3ec2" {
    cidr_block = "10.0.0.0/16"


    tags = {
      Name = "3ec23sub-vpc"
    }
  
}