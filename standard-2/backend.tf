terraform {
  backend "s3" {
    bucket         = "terraform-state-er"
    dynamodb_table = "terraform-state-lock-dynamo"
    region         = "us-east-1"
    key            = "standard-2/standard-terraform.tfstate"
  }
}
