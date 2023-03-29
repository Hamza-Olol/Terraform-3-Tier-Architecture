module "private_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.17.0"
  depends_on             = [module.vpc]

  name = "private_instance"

  ami                    = "ami-ebd02392"
  instance_type          = data.aws_ami.amzlinux2.id
  key_name               = var.key_pair
  user_data = file("app1-install.sh")
  vpc_security_group_ids = module.private_sg.security_group_id
  subnet_ids                   = [module.vpc.private_subnets[0], module.vpc.private_subnets[1]]
  instance_count = var.private_instance_count
  tags     = local.common_tags
}


