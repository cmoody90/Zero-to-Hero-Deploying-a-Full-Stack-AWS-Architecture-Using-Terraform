variable "env" {
  type = string
}
##VPC
variable "vpc_conf" {
  type = map(any)
  default = {
    cidr                 = "10.0.0.0/16"
    enable_dns_support   = true
    enable_dns_hostnames = true
    instance_tenancy     = "default"
  }
}


variable "region" {
  description = "The AWS region where resources will be created."
  type        = string
}
variable "public_subnets" {
  description = "A map of public subnet CIDR blocks keyed by their respective availability zones."
  type        = map(string)
}

variable "private_subnets" {
  description = "A map of private subnet CIDR blocks keyed by their respective availability zones."
  type        = map(string)
}

variable "instance_type" {
  description = "The EC2 instance type for the Auto Scaling Group."
  type        = string
}

variable "ami_id" {
  description = "The AMI ID to be used for the EC2 instances."
  type        = string
}



#alb 
variable "alb_sg_ingress_rules" {
  type    = any
  default = {}
}
variable "alb_sg_egress_rules" {
  type    = any
  default = {}
}
#ec2
variable "ec2_sg_ingress_rules" {
  type    = any
  default = {}
}
variable "ec2_sg_egress_rules" {
  type    = any
  default = {}
}

variable "rds_conf" {
  type = map(any)
  default = {
    allocated_storage       = 20
    storage_type            = "gp2"
    engine                  = "postgres"
    engine_version          = "13.3"
    instance_class          = "db.t3.micro"
    username                = "admin"
    password                = "password123"  # Not recommended to hardcode in production
    storage_encrypted       = true
    publicly_accessible     = false
    backup_retention_period = 7
    multi_az                = false
  }
}



#rds
variable "rds_sg_ingress_rules" {
  type = any
}
variable "rds_sg_egress_rules" {
  type = any
}


variable "destination_org" {
  description = "Organization destination for resources"
  type        = string
  default     = ""
}

variable "pages_token" {
  description = "Token for accessing pages"
  type        = string
  default     = ""
}

