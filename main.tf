provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web_server" {
  ami                    = data.aws_ami.ubuntu.image_id
  instance_type          = "t2.micro"
  associate_public_ip_address = true

  tags = {
    Name = "web-server"
  }
}