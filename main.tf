provider "aws" {
  region = "us-east-1"  # Change to your preferred AWS region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "myyyyy-bucket-abdamdanda-123456"  # Change to a globally unique name

  tags = {
    Name        = "ExampleBucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
