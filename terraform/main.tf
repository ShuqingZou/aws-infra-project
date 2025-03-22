provider "aws" {
  region = var.region
}

module "vpc" {
  source  = "./modules/vpc"
  vpc_name = "shuqing-vpc"
}

module "ec2" {
  source             = "./modules/ec2"
  ami_id             = var.ami_id
  vpc_id             = module.vpc.vpc_id
  public_subnet_id   = module.vpc.public_subnet_id
  private_subnet_id  = module.vpc.private_subnet_id
  my_ip              = var.my_ip
  key_pair_name      = var.key_pair_name
}
