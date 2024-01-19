terraform {
  backend "s3" {
    bucket = "clamav-backend-state"
    key    = "platform.tfstate"
    region = "us-east-1"
  }
}
