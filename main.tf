# 1. Módulo de Redes (VPC) apuntando correctamente al tag del release
module "vpc" {
  # Sintaxis corregida: Sin la ruta falsa intermedia
  source = "github.com/Bas557169/AUY1105-Jose-Bastian-2//vpc_module?ref=VPC"

  cidr_block       = var.raiz_cidr_block
  environment_name = var.raiz_environment
}

# 2. Módulo de Cómputo (EC2) apuntando correctamente al tag del release
module "ec2" {
  # Sintaxis corregida: Sin la ruta falsa intermedia
  source = "github.com/Bas557169/AUY1105-Jose-Bastian-2//ec2_module?ref=ec2"

  vpc_id        = module.vpc.vpc_id
<<<<<<< HEAD
  subnet_id     = module.vpc.subnet_publica_1_id # Conecta la salida de la VPC remota
=======
  subnet_id     = module.vpc.subnet_publica_1_id 
>>>>>>> 6b447f68b7b1c0c4f1f06516b8c31cd54a07aa37
  ami_id        = var.raiz_ami_id
  instance_type = var.raiz_instance_type
  environment   = var.raiz_environment
}
