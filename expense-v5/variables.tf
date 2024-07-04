variable "components" {
  default = {
    frontend = {
      instance_type="t3.small"
    }
    backend = {
      instance_type="t3.small"
    }
    mysql = {
      instance_type = "t2.micro"
    }
  }
}


variable "ami" {
  default = "ami-041e2ea9402c46c32"
}

variable "vpc_security_group_ids"{
  default = ["sg-076b871708f2b2227"]
        }