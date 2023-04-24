# create database subnet group
resource "aws_db_subnet_group" "database_subnet_group" {
  name        = "${var.project_name}-${var.environment}-database-subnets"
  subnet_ids  = [aws_subnet.private_data_subnet_az1.id, aws_subnet.private_data_subnet_az2.id,]
  description = "subnets for database instance"

  tags = {
    Name = "${var.project_name}-${var.environment}-database-subnets"
  }
}

# launch an rds instance from a database snapshot
# resource "aws_db_instance" "database_instance" {
#   instance_class         = 
#   skip_final_snapshot    = 
#   availability_zone      = 
#   identifier             = 
#   snapshot_identifier    = 
#   db_subnet_group_name   = 
#   multi_az               = 
#   vpc_security_group_ids = 
# }

# create the rds instance
resource "aws_db_instance" "db_instance" {
  engine                  = "mysql"
  engine_version          = "8.0.31"
  multi_az                = var.multi_az_deployment
  identifier              = var.database_instance_identifier
  username                = "moloko"
  password                = "moloko123"
  instance_class          = var.database_instance_class
  allocated_storage       = 200
  db_subnet_group_name    = aws_db_subnet_group.database_subnet_group.name
  vpc_security_group_ids  = [aws_security_group.database_security_group.id]
  availability_zone       = data.aws_availability_zones.available_zones.names[1]
  db_name                 = "applicationdb"
  skip_final_snapshot     = true
}