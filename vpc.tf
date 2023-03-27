module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"
  name    = "HO-{var.environment}-vpc"
  cidr    = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.21.0/24", "10.0.22.0/24"]
  # Create database subnet/s and assign ip ranges
  create_database_subnet_group = true
  database_subnets             = ["10.0.11.0/24", "10.0.12.0/24"]

  # Enable nat gateway for private subnets
  enable_nat_gateway  = true
  external_nat_ip_ids = ["10.0.101.7", "10.0.102.8"]

  enable_dns_hostnames = true
  enable_dns_support   = true

  public_subnet_tags = {
    Name = "public-HO-{var.environment}-subnet"
  }
  private_subnet_tags = {
    Name = "private-HO-{var.environment}-subnet"
  }
  database_subnet_tags = {
    Name = "database-HO-{var.environment}-subnet"
  }

  tags = {
    Owner       = "HO"
    Environment = "{var.environment}"
  }

  vpc_tags = {
    Name = "{var.environment}-vpc-HO"
  }
}