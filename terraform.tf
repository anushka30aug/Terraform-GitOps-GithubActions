# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.0"
    }
  }

  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "gitops/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }

}
