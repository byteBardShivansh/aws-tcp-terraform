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
resource "aws_instance" "ec2_instance" {
  ami                                  = var.ami_id
  associate_public_ip_address          = var.associate_public_ip_address
  availability_zone                    = var.availability_zone
  cpu_core_count                       = var.cpu_core_count
  disable_api_termination              = var.disable_api_termination
  ebs_optimized                        = var.ebs_optimized
  hibernation                          = var.hibernation
  instance_initiated_shutdown_behavior = var.instance_initiated_shutdown_behavior
  instance_type                        = var.instance_type
  monitoring                           = var.monitoring
  private_ip                           = var.private_ip
  security_groups                      = var.security_groups
  subnet_id                            = var.subnet_id
  tenancy                              = var.tenancy

  enclave_options {
    enabled = var.enclave_enabled
  }

  root_block_device {
    iops        = var.root_volume_iops
    volume_size = var.root_volume_size
  }

  lifecycle {
    ignore_changes = [timeouts]
  }

  tags = var.tags
}