# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type        = string
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type        = string
}

# VPC Availability Zones
variable "availability_zones" {
  description = "VPC Availability Zones"
  type        = list(string)
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "Public Subnets"
  type        = list(string)
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "Private Subnets"
  type        = list(string)
}

# VPC Database Subnets
variable "vpc_database_subnets" {
  description = "Database Subnets"
  type        = list(string)
}