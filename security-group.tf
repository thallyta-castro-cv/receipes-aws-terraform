resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

    # This is an example, put your real IP here
    cidr_blocks = ["191.32.154.79/32"]
  }

  tags = {
    Name = "terraform-ssh"
  }
}
