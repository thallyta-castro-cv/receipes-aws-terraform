terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev" {
  count = 3
  ami = "ami-026c8acd92718196b"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
  
  tags = {
    Name = "dev${count.index}"
  }
}

resource "aws_instance" "dev-lab" {
  ami = "ami-026c8acd92718196b"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
  depends_on = [aws_s3_bucket.dev-lab]
  
  tags = {
    Name = "dev-lab"
  }
}
