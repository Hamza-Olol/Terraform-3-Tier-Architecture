## EC2 Instances outputs

## public_instance_public_id
output "public_instance_id" {
  description = "List of IDs of instances"
  value       = module.public_instance.id
}

## public_instance_public_ip
output "public_instance_eip" {
  description = "List of public IP addresses assigned to the instances"
  value       = module.public_instance.public_ip
}

# Private EC2 Instances
## ec2_private_instance_ids
output "private_instance_ids" {
  description = "List of IDs of instances"
  value       = module.private_instance.id
}
## ec2_private_ip
output "private_instance_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = module.private_instance.private_ip
}
