variable "raiz_cidr_block" {
  type        = string
  description = "Rango de IPs que se enviará al módulo VPC de GitHub"
  default     = "10.0.0.0/16"
}

variable "raiz_environment" {
  type        = string
  description = "Nombre del entorno para tagear la infraestructura remota"
  default     = "AUY1105-duocapp"
}

variable "raiz_ami_id" {
  type        = string
  description = "ID de la AMI que usará el módulo EC2 de GitHub"
  default     = "ami-0fa8aad99729521be" # Asegúrate de que sea una AMI válida en us-east-1
}

variable "raiz_instance_type" {
  type        = string
  description = "Tipo de capacidad para la máquina virtual"
  default     = "t2.micro"
}