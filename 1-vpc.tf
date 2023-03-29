module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.78.0"
  name    = var.vpc_name
  cidr    = var.vpc_cidr_block

  azs             = var.vpc_availability_zones
  # Private subnets
  public_subnets = var.vpc_public_subnets
  # Public subnets
  private_subnets  = var.vpc_private_subnets
  # DB subnets
  database_subnets             = var.vpc_database_subnets
  create_database_subnet_group       = true
  create_database_subnet_route_table = true

  # Enable nat gateway for private subnets
  enable_nat_gateway  = true

  enable_dns_hostnames = true
  enable_dns_support   = true
  
  # Additional Tags to Subnets
  public_subnet_tags = {
    Type = "public subnets"
  }
  private_subnet_tags = {
    Type = "private subnets"
  }
  database_subnet_tags = {
    Type = "private database subnets"
  }
}