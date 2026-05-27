resource "aws_vpc" "mi_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = { Name = "AUY1105-duocapp-vpc" }
}

# --- Internet Gateway ---
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.mi_vpc.id
  tags   = { Name = "igw-duocapp" }
}

# --- Subredes Públicas ---
resource "aws_subnet" "subnet_publica_1" {
  vpc_id            = aws_vpc.mi_vpc.id
  cidr_block        = var.public_subnet_cidrs[0]
  availability_zone = var.availability_zones[0]
  tags              = { Name = "subnet-publica-1" }
}

resource "aws_subnet" "subnet_publica_2" {
  vpc_id            = aws_vpc.mi_vpc.id
  cidr_block        = var.public_subnet_cidrs[1]
  availability_zone = var.availability_zones[1]
  tags              = { Name = "subnet-publica-2" }
}

# --- Subredes Privadas ---
resource "aws_subnet" "subnet_privada_1" {
  vpc_id            = aws_vpc.mi_vpc.id
  cidr_block        = var.private_subnet_cidrs[0]
  availability_zone = var.availability_zones[0]
  tags              = { Name = "subnet-privada-1" }
}

resource "aws_subnet" "subnet_privada_2" {
  vpc_id            = aws_vpc.mi_vpc.id
  cidr_block        = var.private_subnet_cidrs[1]
  availability_zone = var.availability_zones[1]
  tags              = { Name = "subnet-privada-2" }
}

# --- IP Elástica y NAT Gateway ---
resource "aws_eip" "nat_eip" {
  domain = "vpc"
}

resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.subnet_publica_1.id # El NAT va en la subnet pública
  tags          = { Name = "nat-gw-duocapp" }
}
