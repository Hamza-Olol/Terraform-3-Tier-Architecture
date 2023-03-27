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