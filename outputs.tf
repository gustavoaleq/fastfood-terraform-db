output "db_endpoint" {
  description = "Endpoint de conexão do banco RDS"
  value       = aws_db_instance.fastfood_db.address
}

output "db_name" {
  description = "Nome do banco criado"
  value       = aws_db_instance.fastfood_db.db_name
}
