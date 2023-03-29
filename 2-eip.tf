# Create Elastic IP for public instances
resource "aws_eip" "public_instance_eip" {
  depends_on = [module.public_instance, module.vpc]
#   instance   = [module.public_instance.id[0], module.public_instance.id[1]]
  instance   = module.public_instance.id[0]
  vpc        = true
  tags     = local.common_tags
}
