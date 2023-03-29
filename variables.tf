variable "region-name" {
  type        = string
  description = "AWS regions"
  default     = "eu-west-1"
}

variable "environment" {
  type        = string
  description = "Dev, Test or Prod env"
}

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

variable "owner" {
  description = "owner is ho"
  type        = string
  default     = "ho"
}