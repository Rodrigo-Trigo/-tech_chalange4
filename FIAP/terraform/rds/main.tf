resource "aws_db_instance" "fiap_rds" {
  identifier        = "fiap-rds"
  allocated_storage = 20
  engine            = "postgres"
  engine_version    = "16.14"   # versão válida na sua região
  instance_class    = "db.t3.micro"
  username          = "fiapuser"
  password          = "Fiap1234"
  skip_final_snapshot = true

  db_subnet_group_name   = aws_db_subnet_group.fiap_rds_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
}
