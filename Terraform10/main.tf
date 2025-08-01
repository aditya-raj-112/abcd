provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-github-actions-s3-bucket"
  tags = {
    Name        = "GitHubActionsBucket"
    Environment = "Dev"
  }
}
