provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
      bucket = "tuar-state-ljn"
      key = "global/s3/terraform.tfstate"
      region = "us-east-1"
      encrypt = true
  }
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "tuar-state-ljn"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }
}
