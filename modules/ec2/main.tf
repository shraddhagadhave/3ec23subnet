resource "aws_instance" "instance3" {
    count = var.subcount * 3
    ami = var.ami_id
    instance_type = var.instatype
    subnet_id = element(var.subnet_id, floor(count.index /3))
    tags = {
      Name = "instance-${count.index}"
    }
  
}
