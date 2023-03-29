# VPC Name
variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default     = "ho-devtestprod-vpc"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type        = string
  default     = "10.0.0.0/16"
}

# VPC Availability Zones
variable "vpc_availability_zones" {
  description = "VPC Availability Zones"
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b"]
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "Public Subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "Private Subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

# VPC Database Subnets
variable "vpc_database_subnets" {
  description = "Database Subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}