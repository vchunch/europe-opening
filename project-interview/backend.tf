/*
resource "aws_s3_bucket" "terraform_state" {
  bucket = "interview-project-emea"

  # Prevent accidental deletion of this S3 bucket
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_dynamodb_table" "interview_project_emea_locks" {
  name         = "interview-project-emea-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
*/


terraform {
  backend "s3" {
    bucket         = "interview-project-emea"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "interview-project-emea-locks"
  }
}
