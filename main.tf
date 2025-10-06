terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Recurso principal do banco RDS PostgreSQL
resource "aws_db_instance" "fastfood_db" {
  identifier             = var.db_identifier
  allocated_storage      = 20
  engine                 = "postgres"
  engine_version         = "15.13" # última versão estável suportada
  instance_class         = "db.t3.micro"
  username               = var.db_username
  password               = var.db_password
  db_name                = var.db_name
  skip_final_snapshot    = true
  publicly_accessible    = true
}
