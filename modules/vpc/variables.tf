variable "cidr_block" {
  description = "The value of the CIDR block to be configured"
  type    = string
}

variable "subnet_cidr_block" {
  description = "The value of subnet CIDR block to be configured"
  type    = string
}

variable "availability_zone" {
  type    = string
}

variable "region" {
  type    = string
}
