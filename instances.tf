module "public_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["one", "two"])

  name = "instance-${each.key}"
  # update the values below with data._.id values
  ami                    = "ami-ebd02392"
  instance_type          = var.instance_type
  key_name               = var.key_pair
  monitoring             = true
  vpc_security_group_ids = module.public_sg.security_group_id
  subnet_id              = module.vpc.public_subnets
  tags                   = {
    Name = "{var.environment}-instance"
  }
}

module "private_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["one", "two"])

  name = "instance-${each.key}"

  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  key_name               = var.key_pair
  monitoring             = true
  vpc_security_group_ids = module.private_sg.security_group_id
  subnet_id              = module.vpc.private_subnets
  tags                   = {
    Name = "{var.environment}-instance"
  }
}

module "db_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["one", "two"])

  name = "instance-${each.key}"

  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  key_name               = var.key_pair
  monitoring             = true
  vpc_security_group_ids = module.private_sg.security_group_id
  subnet_id              = module.vpc.database_subnets
  tags                   = {
    Name = "{var.environment}-instance"
  }
}