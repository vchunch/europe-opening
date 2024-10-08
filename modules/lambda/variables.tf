variable "lambda_zip_file" {
  type    = string
  default = "lambda_function_payload.zip"
}

variable "lambda_function_name" {
  type    = string
  default = "MyLambdaFunction"
}

variable "lambda_handler" {
  type    = string
  default = "index.handler"
}

variable "lambda_runtime" {
  type    = string
  default = "nodejs14.x"
}

variable "lambda_role_name" {
  type    = string
  default = "lambda_exec_role"
}
