module "vpc" {
  source              = "./vpc_module"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zones  = ["us-east-1a", "us-east-1b"]
}

module "ec2" {
  source   = "./ec2_module"
  vpc_id   = module.vpc.vpc_id
  subnet_id = module.vpc.public_subnet_ids[0]
  # otras variables para EC2
}
