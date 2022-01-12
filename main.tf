provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAQTBU7BEFRE5QUCNW"
  secret_key = "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"
}
resource "aws_instance" "Terraform" {
  ami           = "ami-0af25d0df86db00c1"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform"
  }
}
resource "aws_s3_bucket" "test_bucket" {
  bucket = "my-terraform-manoj-bucket"
  acl    = "private"

  tags = {
    Name        = "Terraform bucket"
    Environment = "PROD"
  }
}
