# DynamoDB Module

resource "aws_dynamodb_table" "my_table" {
  name           = var.table_name
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  billing_mode = "PAY_PER_REQUEST"
}

