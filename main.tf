terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.25.0"
      #version = "4.67.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

# import {
#   to = aws_db_instance.default
#   id = "terraform-20231116090125418500000001"
# }

# resource "aws_db_instance" "default" {
#   allocated_storage    = 10
#   db_name              = "mydb"
#   engine               = "mysql"
#   engine_version       = "5.7.42"
#   instance_class       = "db.t3.micro"
#   username             = "foo"
#   password             = "foobarbaz"
#   parameter_group_name = "default.mysql5.7"
#   skip_final_snapshot  = true
# }


resource "aws_db_instance" "default" {
  allocated_storage          = 10
  db_name                    = "MYDB"
  engine                     = "oracle-ee-cdb"
  engine_version             = "19.0.0.0.ru-2023-10.rur-2023-10.r1"
  instance_class             = "db.m5.large"
  username                   = "foo"
  password                   = "foobarbaz"
  parameter_group_name       = "default.oracle-ee-cdb-19"
  skip_final_snapshot        = true
}