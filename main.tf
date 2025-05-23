provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "vpc" {
  source     = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
}

module "subnet" {
  source         = "./modules/subnet"
  vpc_id         = module.vpc.vpc_id
  cidr_block     = "10.0.1.0/24"
  az             = "us-east-1a"
  map_public_ip  = true
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "ec2_instance" {
  source             = "./modules/instance"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = module.subnet.subnet_id
  security_group_ids = [module.security_group.sg_id]
  instance_count     = var.instance_count
}
