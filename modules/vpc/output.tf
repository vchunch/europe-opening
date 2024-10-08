output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.main_subnet.id
}

output "vpc_endpoint_id" {
  value = aws_vpc_endpoint.api_gateway_endpoint.id
}