## Configure S3 Backend
terraform {
  backend "s3" {
    bucket  = "ytech-terraform-state"
    key     = "eks/s3/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}
