## Security Group Outputs

# Security Group ID outputs
output "public_sg_id" {
  description = "The ID of the security group"
  value       = module.public_sg.this_security_group_id
}


output "private_sg_id" {
  description = "The ID of the security group"
  value       = module.private_sg.this_security_group_id
}