terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


module "ec2" {
  source = "./ec2_module"

  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.subnet_publica_1_id # Conexión directa entre módulos
  ami_id        = var.raiz_ami_id
  instance_type = var.raiz_instance_type
  environment   = var.raiz_environment
}