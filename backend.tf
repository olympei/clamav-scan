terraform {
  backend "s3" {
    bucket = "tfbucketttt"
    key    = "platform.tfstate"
    region = "us-east-1"
  }
}
