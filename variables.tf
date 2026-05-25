variable "raiz_cidr_block" {
  type        = string
  description = "Rango de IPs de la infraestructura"
  default     = "10.0.0.0/16"
}

variable "raiz_environment" {
  type        = string
  description = "Ambiente del proyecto"
  default     = "AUY1105-duocapp"
}

variable "raiz_ami_id" {
  type        = string
  description = "AMI para el servidor EC2"
  default     = "ami-0fa8aad99729521be"
}

variable "raiz_instance_type" {
  type        = string
  description = "Tamaño de la EC2"
  default     = "t2.micro"
}