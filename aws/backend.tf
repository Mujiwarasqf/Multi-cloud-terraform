terraform {
  backend "s3" {
    bucket         = "multicloud-terraform-state-bucket-one"
    key            = "aws/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
  }
}
