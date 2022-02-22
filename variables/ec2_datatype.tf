provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "terra" {
    name = var.usernumber
    path = "/system"
  
}