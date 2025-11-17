terraform {
  backend "s3" {
    bucket = "mohamedmotaz-terraform-bucket" 
    key    = "finalproject/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
