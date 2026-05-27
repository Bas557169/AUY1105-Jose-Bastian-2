# Llamada al módulo VPC
module "vpc" {
  source = "./vpc_module"
}

# Llamada al módulo EC2
module "ec2" {
  source = "./ec2_module"
}

