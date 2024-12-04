# main.tf
provider "aws" {
  region = "us-east-1"
}

module "s3" {
  source      = "./modules/s3"
}

module "ec2" {
  source        = "./modules/ec2"
}


