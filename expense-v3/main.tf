resource "aws_instance" "ec2-nodes" {
  for_each = var.components
  ami           = "ami-041e2ea9402c46c32"
  instance_type = each.value["instance_type"]
  vpc_security_group_ids =  ["sg-076b871708f2b2227"]

  tags = {
    Name = each.key
  }
}

variable "components" {
  default = {
    frontend = {
      instance_type = "t2.micro"
    }
    backend = {
      instance_type = "t2.micro"
    }
    mysql = {
      instance_type = "t2.micro"
    }
  }
}

