# Define Local Values in Terraform
locals {
  owners      = var.owner
  environment = var.environment
  name        = "${var.owner}-${var.environment}"
  common_tags = {
    owners      = local.owners
    environment = local.environment
  }
} 