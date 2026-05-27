# 1. Módulo de Redes (VPC) apuntando al tag del release con sus argumentos correctos
module "vpc" {
  source = "github.com/Bas557169/AUY1105-Jose-Bastian-2//vpc_module?ref=VPC"

  # MAPEO CORRECTO:
  vpc_cidr = var.raiz_cidr_block  # Pasa tu "10.0.0.0/16" local a la variable "vpc_cidr" del release
  
  # Nota: Las variables "public_subnet_cidrs", "private_subnet_cidrs" y "availability_zones"
  # tomarán sus valores por defecto ("["10.0.1.0/24", ...]") definidos en tu módulo,
  # por lo que no es estrictamente necesario declararlas aquí a menos que quieras cambiarlas.
}

# 2. Módulo de Cómputo (EC2) apuntando correctamente al tag del release
module "ec2" {
  source = "github.com/Bas557169/AUY1105-Jose-Bastian-2//ec2_module?ref=ec2"

  vpc_id        = module.vpc.vpc_id
  subnet_id     = module.vpc.subnet_publica_1_id 
  ami_id        = var.raiz_ami_id
  instance_type = var.raiz_instance_type
  environment   = var.raiz_environment
}
