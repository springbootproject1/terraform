terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "terraform/dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-dev"
  }
}

