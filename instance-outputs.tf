## EC2 Instances outputs

# Public Instances
output "public_instance_ids" {
  description = "List of IDs of instances"
  value       = module.public_instance.id
}

output "ec2_bastion_public_ip" {
  description = "List of public IP addresses assigned to the instances"
  value       = module.public_instance.public_ip
}

# Private Instances
output "private_instance_ids" {
  description = "List of IDs of instances"
  value       = module.private_instance.id
}

output "private_instance_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = module.private_instance.private_ip
}

# DB Instances
output "DB_instance_ids" {
  description = "List of IDs of instances"
  value       = module.db_instance.id
}

output "DB_instance_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = module.db_instance.private_ip
}