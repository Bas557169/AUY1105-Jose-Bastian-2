# 1. Módulo de Redes (VPC)
module "vpc" {
  source = "github.com/Bas557169/AUY1105-Jose-Bastian-2//vpc_module?ref=VPC"
}

<<<<<<< HEAD
# 2. Módulo de EC2
=======
>>>>>>> 60c2deaf282cca1a33c01f83f388058e21810b82
module "ec2" {
  source = "github.com/Bas557169/AUY1105-Jose-Bastian-2//ec2_module?ref=ec2"

  vpc_id        = module.vpc.vpc_id
<<<<<<< HEAD
  subnet_id     = module.vpc.subnet_publica_1_id
=======
  subnet_id     = module.vpc.subnet_publica_1_id 
>>>>>>> 60c2deaf282cca1a33c01f83f388058e21810b82
  ami_id        = var.raiz_ami_id
  instance_type = var.raiz_instance_type
  environment   = var.raiz_environment
}
