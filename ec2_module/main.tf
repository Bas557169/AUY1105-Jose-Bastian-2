resource "aws_security_group" "ssh_access" {
  name        = "${var.environment}-ssh-access"
  description = "Permitir acceso SSH desde mi IPv4"
  vpc_id      = var.vpc_id # Usando la variable inyectada

  ingress {
    description = "SSH desde mi IPv4"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["201.189.206.99/32"]
  }

  egress {
    description = "Permitir HTTPS de salida para actualizaciones"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.environment}-ssh-access"
  }
}

resource "aws_instance" "mi_ec2" {
  ami                     = var.ami_id
  instance_type           = var.instance_type
  subnet_id               = var.subnet_id # Usando la variable inyectada
  vpc_security_group_ids  = [aws_security_group.ssh_access.id]
  disable_api_termination = true
  monitoring              = true
  ebs_optimized           = true

  iam_instance_profile = "LabInstanceProfile"

  root_block_device {
    encrypted = true
  }

  metadata_options {
    http_tokens = "required"
  }

  tags = {
    Name = "AUY1105-duocapp-ec2"
  }
}