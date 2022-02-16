provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2_dev" {
    ami = "ami-0851b76e8b1bce90b"
    instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
    vpc = true
}

output "eip_ip" {
  value = aws_eip.lb.public_ip
}

# Allocationg eip with ec2
resource "aws_eip_association" "ec2_eip" {
    instance_id = aws_instance.ec2_dev.id
    allocation_id = aws_eip.lb.id
}

# Allocating eip with sg

resource "aws_security_group" "allow_tls" {
  name = "terr_group"

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["${aws_eip.public_ip/32}"]
  }
  
}
