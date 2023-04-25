resource "aws_instance" "ec2_instance" {
  ami                    = var.ami_id
  count                  = var.number_of_instances
  subnet_id              = aws_subnet.public_subnet_az1.id
  instance_type          = var.instance_type
  key_name               = var.ami_key_pair_name
  vpc_security_group_ids = [aws_security_group.bastion_security_group.id]

  tags = {
    Name = "${var.project_name}-${var.environment}-${var.instance_name}"
  }
} 
