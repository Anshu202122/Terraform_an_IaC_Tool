terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
  backend "s3" {
    bucket = "devops-project-backend"
    key    = "dev/terraform.tfstate"
    region = "eu-north-1"
  }

}

provider "aws" {
  region = "eu-north-1"
}
