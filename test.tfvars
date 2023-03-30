# Test Environment, Region & AZs tfvars
environment   = "test"
region-name = "eu-west-2"
availability_zones = ["eu-west-2a", "eu-west-2b"]

# VPC tfvars
vpc_name = "ho-test-vpc"
vpc_cidr_block = "10.0.0.0/16"
vpc_public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_private_subnets = ["10.0.11.0/24", "10.0.12.0/24"]
vpc_database_subnets = ["10.0.101.0/24", "10.0.102.0/24"]

# Instance tfvars
instance_type = "t2.micro"
key_pair = "HO-keypair"
private_instance_count = 2
public_instance_count = 2
public_instance_name = "test-ho-public-instance"
private_instance_name = "test-ho-private-instance"
ec2-ami = "ami-0ad97c80f2dfe623b"

# Misc tfvars
owner = "ho"