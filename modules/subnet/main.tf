resource "aws_subnet" "public_subnet3" {
    count = var.subcount
    vpc_id = var.vpc_id
    cidr_block = "10.0.${count.index}.0/24"  
  
}