module "private_sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"
  name        = "ho-private-sg"
  description = "Security group for the private subnet, Ingress is only open to the VPC block and egress is opwn to all"
  vpc_id      = module.vpc.vpc_id
  # Ingress Rules & CIDR Blocks.
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  # Egress Rule - all-all open to the whole internet
  egress_rules = ["all-all"]
  tags = local.common_tags
}

module "public_sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"
  name        = "ho-public-sg"
  description = "Security group for the public subnet, Ingress is open to my IP and Egress to the whole internet"
  vpc_id      = module.vpc.vpc_id
  # Ingress Rules & CIDR Blocks
  ingress_rules = ["ssh-tcp", "http-80-tcp"]
  # Ingress from personal ip address as to not open it to the whole internet (Env constraint)
  ingress_cidr_blocks = [var.my-ip]
  # Egress Rule - all-all open
  egress_rules = ["all-all"]
  tags     = local.common_tags
}