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

# In the above input key is frontend, value is { instance_type = "t3.small" }
#Since it is been called by for_each, each prefix is needed like each.key and each.value