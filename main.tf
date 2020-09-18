terraform {
  required_providers {
    cloud = {
      source  = "hashicorp/aws"
      version = "~> 3.7.0"
    }
  }
}

provider "aws" {
  region = var.region
}