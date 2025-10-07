variable "aws_region" {
  description = "Região da AWS onde o RDS será criado"
  type        = string
  default     = "us-east-1"
}

variable "db_identifier" {
  description = "Identificador único do banco RDS"
  type        = string
  default     = "fastfood-db"
}

variable "db_username" {
  description = "Usuário administrador do banco"
  type        = string
}

variable "db_password" {
  description = "Senha do banco RDS"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Nome inicial do banco"
  type        = string
  default     = "fastfood"
}
