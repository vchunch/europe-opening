
# Call the VPC module
module "vpc" {
  source            = "../modules/vpc"
  cidr_block        = var.cidr_block
  subnet_cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone
  region            = var.region
}

# Call the DynamoDB module
module "dynamodb" {
  source      = "../modules/dynamodb"
  table_name  = var.table_name
}

# Call the Lambda module
module "lambda" {
  source              = "../modules/lambda"
  lambda_zip_file     = var.lambda_zip_file
  lambda_function_name = var.lambda_function_name
  lambda_handler      = var.lambda_handler
  lambda_runtime      = var.lambda_runtime
  lambda_role_name    = var.lambda_role_name
}

# Call the API Gateway module
module "api_gateway" {
  source           = "../modules/api_gateway"
  api_name         = var.api_name
  api_description  = var.api_description
  lambda_invoke_arn = module.lambda.lambda_invoke_arn
}

