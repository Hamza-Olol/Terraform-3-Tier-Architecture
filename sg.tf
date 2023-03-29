module "private_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "ho-private-sg"
  description = "Security group for the private subnet"
  vpc_id      = module.vpc.vpc_id
  # Ingress Rules & CIDR Blocks
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  # Egress Rule - all-all open
  egress_rules = ["all-all"]
  tags = {
    Name = "ho-{Var.environment}-private_sg "
  }
}

module "public_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "ho-public-sg"
  description = "Security group for the public subnet"
  vpc_id      = module.vpc.vpc_id
  # Ingress Rules & CIDR Blocks
  ingress_rules = ["ssh-tcp", "http-80-tcp"]
  # Ingress from personal ip address as to not open it to the whole internet
  ingress_cidr_blocks = [var.my-ip]
  # Egress Rule - all-all open
  egress_rules = ["all-all"]
  tags     = local.common_tags
}