variable "key_pair" {
  type        = string
  description = "Dev, Test or Prod env"
  default     = "HO-keypair.pem"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}

variable "private_instance_count" {
  description = "AWS EC2 Private Instances Count"
  type        = number
  default     = 2
}

variable "public_instance_count" {
  description = "AWS EC2 Public Instances Count"
  type        = number
  default     = 2
}

variable "public_instance_name" {
  description = "Public instance name"
  type        = string
}

variable "private_instance_name" {
  description = "Private instance name"
  type        = string
}

variable "ec2-ami" {
  description = "Private instance name"
  type        = string
}