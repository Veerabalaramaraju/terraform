# Variable for AWS region
variable "aws_region" {
  description = "The AWS region where resources will be created"
  type        = string
  default     = "us-west-2" # Set a default value or override in terraform.tfvars
}

# Variable for S3 bucket name
variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

# Variable for S3 bucket ACL
variable "s3_bucket_acl" {
  description = "The ACL for the S3 bucket"
  type        = string
  default     = "private" # Default to private
}

# Variable for bucket tags
variable "s3_bucket_tags" {
  description = "Tags for the S3 bucket"
  type        = map(string)
  default     = {
    Environment = "Dev"
  }
}