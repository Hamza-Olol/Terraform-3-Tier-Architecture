module "private_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "HO-private-sg"
  description = "Security group for the private subnet"
  vpc_id      = module.vpc.vpc_id
  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "User-service ports"
      cidr_blocks = var.my-ip
    }
  ]
}

module "public_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "HO-public-sg"
  description = "Security group for the public subnet"
  vpc_id      = module.vpc.vpc_id
  # ingress_rules            = ["https-tcp", "http-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      description = "https ports"
      cidr_blocks = var.my-ip
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "http ports"
      cidr_blocks = var.my-ip
    }
  ]
}
