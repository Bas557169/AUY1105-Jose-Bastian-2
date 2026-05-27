module "vpc" {
  source = "github.com/Bas557169/AUY1105-Jose-Bastian-2//vpc_module?ref=VPC"
}

module "ec2" {
  source = "github.com/Bas557169/AUY1105-Jose-Bastian-2//ec2_module?ref=ec2"

  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.subnet_publica_1_id
  ami_id        = var.raiz_ami_id
  instance_type = var.raiz_instance_type
  environment   = var.raiz_environment
}


