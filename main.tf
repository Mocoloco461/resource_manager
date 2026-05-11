terraform {

  backend "s3" {
    bucket       = "terraform-buckets-manager"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
}

provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}


resource "aws_s3_bucket" "homelab-terops-state" {
  bucket = "homelab-terops-state"
}