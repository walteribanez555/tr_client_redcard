terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "tr-client-redcard-s3"
    region = "us-east-1"
    key = "dev_client/terraform.tfstate"
  }
}

# Configure the AWS Provider
provider "aws" {
    region = "us-east-1"


}