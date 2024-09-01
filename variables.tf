variable "ami" {
  type = map(string)

  default = {
    "us-east-1" = "ami-026c8acd92718196b"
  }
}

variable "CIDR-access-remote" {
    type = list(string)
    default = [ "191.32.154.79/32", "191.33.154.79/32" ]  
}

variable "key-name" {
  type = string
  default = "terraform-aws"
}
