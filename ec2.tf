resource "aws_instance" "dev" {
  count = 3
  ami = var.ami["us-east-1"]
  instance_type = "t2.micro"
  key_name = var.key-name
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
  
  tags = {
    Name = "dev${count.index}"
  }
}

resource "aws_instance" "dev-lab-s3" {
  ami = var.ami["us-east-1"]
  instance_type = "t2.micro"
  key_name = var.key-name
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
  depends_on = [aws_s3_bucket.dev-lab]
  
  tags = {
    Name = "dev-lab-s3"
  }
}

resource "aws_instance" "dev-lab-dynamodb" {
  ami = var.ami["us-east-1"]
  instance_type = "t2.micro"
  key_name = var.key-name
  
  tags = {
    Name = "dev-lab-dynamodb"
  }

  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
  depends_on = [aws_dynamodb_table.dynamodb-table-dev]
}
