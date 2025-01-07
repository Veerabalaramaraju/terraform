
Here’s a minimal Terraform script to create an S3 bucket, including the required AWS and Terraform version specifications:

s3_bucket.tf
hcl
Copy code
# Specify the required Terraform and AWS provider versions
terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Adjust based on your environment
    }
  }
}

# Define the AWS provider
provider "aws" {
  region = "us-west-2" # Change to your desired region
}

# Create an S3 bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket        = "my-example-bucket-123456" # Use a globally unique name
  acl           = "private"                 # Set bucket permissions

  tags = {
    Name        = "MyExampleBucket"
    Environment = "Dev"
  }
}