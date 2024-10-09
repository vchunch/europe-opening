variable "cidr_block" {
  description = "The value of the CIDR block to be configured"
  type        = string
}

variable "subnet_cidr_block" {
  description = "The value of subnet CIDR block to be configured"
  type        = string
}

variable "availability_zone" {
  type = string
}

variable "region" {
  type = string
}
variable "api_name" {
  type = string
}

variable "api_description" {
  type = string
}

/*variable "lambda_invoke_arn" {
  type = string
}*/

variable "lambda_zip_file" {
  type = string
}

variable "lambda_function_name" {
  type = string
}


variable "lambda_handler" {
  type = string
}

variable "lambda_runtime" {
  type = string
}

variable "lambda_role_name" {
  type = string
}


variable "table_name" {
  type = string
}

variable "aws_region" {
  type = string
}