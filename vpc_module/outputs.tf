output "vpc_id" {
  value = aws_vpc.mi_vpc.id
}

output "public_subnet_ids" {
  value = [aws_subnet.subnet_publica_1.id, aws_subnet.subnet_publica_2.id]
}

output "private_subnet_ids" {
  value = [aws_subnet.subnet_privada_1.id, aws_subnet.subnet_privada_2.id]
}

output "nat_gateway_id" {
  value = aws_nat_gateway.nat_gw.id
}
