# environment variables
variable "region" {
  description = "region to create resources"
  type        = string
}

variable "project_name" {
  description = "project name"
  type        = string
}

variable "environment" {
  description = "environment"
  type        = string
}

#VPC variable
variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

#public subnet availabilty zone 1 cidr variable
variable "public_subnet_az1_cidr" {
  description = "public subnet availabilty zone one cidr"
  type        = string
}

#public subnet availabilty zone 2 cidr variable
variable "public_subnet_az2_cidr" {
  description = "public subnet availabilty zone two cidr"
  type        = string
}

#private subnet availabilty zone 1 cidr variable
variable "private_app_subnet_az1_cidr" {
  description = "private subnet availabilty zone one cidr"
  type        = string
}

#private subnet availabilty zone 2 cidr variable
variable "private_app_subnet_az2_cidr" {
  description = "private subnet availabilty zone two cidr"
  type        = string
}

#private data subnet availabilty zone 1 cidr variable
variable "private_data_subnet_az1_cidr" {
  description = "private data subnet availabilty zone one cidr"
  type        = string
}

#private data subnet availabilty zone 2 cidr variable
variable "private_data_subnet_az2_cidr" {
  description = "private data subnet availabilty zone two cidr"
  type        = string
}

#security-group variable
variable "ssh_location" {
  description = "ip address that can ssh into the server"
  type        = string
}

#database_instance_class variable
variable "database_instance_class" {
  description = "database instance class"
  type        = string
}

#database_instance_class variable
variable "database_instance_identifier" {
  description = "database instance identifier"
  type        = string
}

#database multi az deployment variable
variable "multi_az_deployment" {
  description = "create a standby db instance"
  type        = bool
}

#Bastion server details
variable "instance_name" {
  description = "Name of the instance to be created"
  type        = string
}

variable "instance_type" {
  type = string
}

variable "ami_id" {
  description = "The AMI to use"
  type        = string
}

variable "number_of_instances" {
  description = "number of instances to be created"
  type        = number
}


variable "ami_key_pair_name" {
  type    = string
}
