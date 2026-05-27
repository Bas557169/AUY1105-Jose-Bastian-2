resource "aws_vpc" "mi_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = { Name = "AUY1105-duocapp-vpc" }
}

# Subnets, IGW, NAT, route tables, flow logs...
# (copias lo que ya tienes en vpc.tf)
