variable "region-name" {
  type        = string
  description = "AWS regions"
  default     = "eu-west-1"
}

variable "environment" {
  type        = string
  description = "Dev, Test or Prod env"
}

variable "owner" {
  description = "owner is ho"
  type        = string
  default     = "ho"
}
