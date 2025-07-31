terraform {
  backend "s3" {
    bucket = "mybucket-private-banking-myhoney-05011997"
    key = "terraform/state.tfstate"
    region = "us-east-1"
   }
} 
