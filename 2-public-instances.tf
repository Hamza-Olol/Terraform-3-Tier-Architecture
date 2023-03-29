module "public_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.17.0"

  name = "devtestprod-public_instance"
  # update the values below with data._.id values
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.key_pair
  associate_public_ip_address = true
  vpc_security_group_ids = module.public_sg.security_group_id
  subnet_ids                   = [module.vpc.public_subnets[0], module.vpc.public_subnets[1]]
  instance_count = var.public_instance_count
  # user_data = file("app1-install.sh")
  tags     = local.common_tags
}
