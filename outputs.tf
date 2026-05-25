output "raiz_vpc_id" {
  value       = module.vpc.vpc_id
  description = "ID de la VPC principal"
}

output "raiz_ec2_public_ip" {
  value       = module.ec2.instancia_ip_publica
  description = "IP pública de la instancia (Usa esta IP para conectarte: ssh ec2-user@<IP>)"
}