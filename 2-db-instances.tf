# module "db_instance" {
#   source  = "terraform-aws-modules/ec2-instance/aws"
#   version = "4.3.0"

#   # for_each = toset(["one", "two"])
#   count = 2

#   name = "db_instance"

#   ami                    = "ami-ebd02392"
#   instance_type          = "t2.micro"
#   key_name               = var.key_pair
#   monitoring             = true
#   vpc_security_group_ids = module.private_sg.security_group_id
#   subnet_id                   = element(module.vpc.database_subnets, 0)
#   # subnet_ids = [
#   #   module.vpc.database_subnets[0],
#   #   module.vpc.database_subnets[1]
#   # ]
#   tags = {
#     Name = "{var.environment}-instance"
#   }
# }