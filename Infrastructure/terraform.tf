terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.65.0"
    }
  }
 backend "s3" {
       bucket = "demo-bucket-for-remote-backends"
       key = "terraform.tfstate"
       region = "us-east-2"
       dynamodb_table = "demo-dynamodb-table"
 }
}
