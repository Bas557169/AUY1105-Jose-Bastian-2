terraform {
  required_version = ">= 1.0.0"

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

module "vpc" {
  source = "github.com/Bas557169/AUY1105-Jose-Bastian-2//EA2/ACT_Preparacion/vpc_module?ref=VPC"

  cidr_block       = var.raiz_cidr_block
  environment_name = var.raiz_environment
}


module "ec2" {
  source = "github.com/Bas557169/AUY1105-Jose-Bastian-2//EA2/ACT_Preparacion/ec2_module?ref=ec2"

  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.subnet_publica_1_id # Conecta la salida de la VPC remota
  ami_id        = var.raiz_ami_id
  instance_type = var.raiz_instance_type
  environment   = var.raiz_environment
}