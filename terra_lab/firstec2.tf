provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "terraec2" {
    ami = "ami-0851b76e8b1bce90b"
    instance_type = "t2.micro"
  
}
