output "api_url" {
  value = module.api_gateway.api_gateway_url
}

output "dynamodb_table_name" {
  value = module.dynamodb.dynamodb_table_name
}

output "lambda_invoke_arn" {
  value = module.lambda.lambda_invoke_arn
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.vpc.subnet_id
}

output "vpc_endpoint_id" {
  value = module.vpc.vpc_endpoint_id
}