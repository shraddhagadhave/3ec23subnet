output "subnet_id" {
    value = aws_subnet.public_subnet3[*].id
  
}
output "subcount" {
    value = var.subcount 
  
}