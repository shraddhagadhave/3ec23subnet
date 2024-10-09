provider "aws" {
  region = "us-east-1"

}

module "vpc" {
  source = "./modules/vpc"

}

module "subnet" {
    source = "./modules/subnet"
    vpc_id = module.vpc.vpc_id
    #subcount = var.subcount
    
  
}
module "ec2" {
    source = "./modules/ec2"
    subnet_id = module.subnet.subnet_id
    subcount = module.subnet.subcount
    
}