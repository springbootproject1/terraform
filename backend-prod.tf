terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "terraform/prod/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-prod"
  }
}


