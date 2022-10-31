terraform {
  required_providers {
    aws = {
    source  = "hashicorp/aws"
    version = "~> 4.1"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "acess-key"
  secret_key = "secret-key"

}


resource "aws_db_instance" "rds_instance" {
allocated_storage = 20
identifier = "rds-terraform"
storage_type = "gp2"
engine = "mysql"
engine_version = "8.0.27"
instance_class = "db.t2.micro"
username = "dbhari"
password = "^[a-zA-Z0-9]*$"
publicly_accessible    = true
db_subnet_group_name = "aws_noname"
skip_final_snapshot    = true


  tags = {
    Name = "rdsdate"
  }
}
