resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

    # This is an example, put your real IP here
    cidr_blocks = var.CIDR-access-remote
  }

  tags = {
    Name = "terraform-ssh"
  }
}
