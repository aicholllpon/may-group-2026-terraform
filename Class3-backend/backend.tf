terraform {
  backend "s3" {
    bucket = "kaizen-aicholpons"
    key    = "statefile-virginia-terraform.tfstate"
    region = "us-east-1"
  }
}