terraform {
  required_version = ">= 1.0.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }
  }
}

module "vpc" {
  # Aseguramos que el tag coincida exactamente con el de GitHub (minúsculas si así lo creaste)
  source = "github.com/Bas557169/AUY1105-Jose-Bastian-2//vpc_module?ref=vpc"
}

module "ec2" {
  source = "github.com/Bas557169/AUY1105-Jose-Bastian-2//ec2_module?ref=ec2"

  vpc_id        = module.vpc.vpc_id
  
  # CORRECCIÓN AQUÍ: Llamamos al output real y le pedimos la primera subnet de la lista
  subnet_id     = module.vpc.public_subnet_ids[0] 
  
  ami_id        = var.raiz_ami_id
  instance_type = var.raiz_instance_type
  environment   = var.raiz_environment
}
