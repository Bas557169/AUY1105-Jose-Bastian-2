# --- OUTPUTS DE RED (VPC) ---

output "raiz_vpc_id" {
  value       = module.vpc.vpc_id
  description = "El ID de la VPC creada remotamente desde el release VPC"
}

output "raiz_subnet_publica_id" {
  value       = module.vpc.subnet_publica_1_id
  description = "El ID de la subnet pública donde se aloja la infraestructura de cómputo"
}


# --- OUTPUTS DE CÓMPUTO (EC2) ---

output "raiz_instancia_id" {
  value       = module.ec2.instancia_id
  description = "El ID único de la instancia EC2 desplegada en AWS Academy"
}

output "raiz_instancia_ip_publica" {
  value       = module.ec2.instancia_ip_publica
  description = "Dirección IP pública asignada a la EC2. Úsala para conectarte por SSH"
}