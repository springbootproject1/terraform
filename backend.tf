terraform {
  backend "s3" {
    bucket         = "my-terraform-state-prod"         # Replace with your S3 bucket name
    key            = "terraform/${var.environment}/terraform.tfstate"  # For illustration only
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"                   # Replace with your DynamoDB table name
  }
}
