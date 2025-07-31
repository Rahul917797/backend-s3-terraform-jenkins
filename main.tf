provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "private_s3_bucket" {
  bucket = "mybucket-private-banking-myhoney-05011997"

  tags = {
    owner       = "Rahul"
    version     = "5-0-0-1"
    App_name    = "MyHoney"
    Environment = "Production"
  }
}

resource "aws_s3_bucket_public_access_block" "block_access" {
  bucket                  = aws_s3_bucket.private_s3_bucket.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true

}
