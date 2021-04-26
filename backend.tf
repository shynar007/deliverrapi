terraform {
  backend "s3" {
    bucket = "terrafoam-state-shinadeliverr"
    key    = "core/terraform.tfstate"
    region = "us-east-1"
  }
}