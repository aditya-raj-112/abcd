terraform {
  backend "s3" {
    bucket         = "tterraform-state-bucket"   # Replace with your S3 bucket name
    key            = "day3/terraform.tfstate"  # Path within the bucket
    region         = "us-east-1"                   # Region of your bucket
    encrypt        = true                           # Encrypt the state file at rest
    use_lockfile = true             # Optional: for state locking
  }
}