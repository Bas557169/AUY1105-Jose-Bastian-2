variable "vpc_id" {
  type        = string
  description = "ID de la VPC (inyectado desde el módulo de red)"
}

variable "subnet_id" {
  type        = string
  description = "ID de la subnet pública donde residirá la EC2"
}

variable "ami_id" {
  type        = string
  description = "ID de la AMI a utilizar"
}

variable "instance_type" {
  type        = string
  description = "Tipo de instancia de computación"
}

variable "environment" {
  type        = string
  description = "Nombre del entorno"
}