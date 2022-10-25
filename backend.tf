terraform {
  backend "s3" {
    bucket = "mytfstate-bk-webapp-dev"
    key = "staging/webapp/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform"
    encrypt = true
  }
}