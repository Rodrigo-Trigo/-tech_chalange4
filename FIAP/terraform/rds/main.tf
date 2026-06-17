# RDS Database Configuration
resource "aws_db_instance" "main" {
  allocated_storage    = 20
  engine               = "postgres"
  engine_version       = "14"
  instance_class       = "db.t3.micro"
  name                 = "fiapdb"
  username             = "admin"
  password             = "changeme123"
  skip_final_snapshot  = true

  tags = {
    Environment = "fase4"
  }
}
