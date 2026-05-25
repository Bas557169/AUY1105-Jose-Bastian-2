output "instancia_id" {
  value       = aws_instance.mi_ec2.id
  description = "El ID de la instancia EC2 desplegada"
}

output "instancia_ip_publica" {
  value       = aws_instance.mi_ec2.public_ip
  description = "La dirección IP pública de la EC2 para conectarse por SSH"
}