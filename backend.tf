# backend.tf
terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket"
    key            = "pharma-infra/terraform.tfstate"
    region         = "us-east-1"
  }
}