provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source              = "./modules/vpc"
  cidr_block          = var.vpc_cidr
  azs                 = var.azs
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs= var.private_subnet_cidrs
  environment         = var.environment
}

module "ec2" {
  source                  = "./modules/ec2"
  ami                     = var.ami
  key_name                = var.key_name
  jenkins_instance_type   = var.jenkins_instance_type
  build_instance_type     = var.build_instance_type
  sonar_instance_type     = var.sonar_instance_type
  public_subnets          = module.vpc.public_subnets
  environment             = var.environment
}
