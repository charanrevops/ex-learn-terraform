resource "aws_instance" "ec2-nodes" {
  count          = length(var.components)
  instance_type = "t2.micro"
  vpc_security_group_ids =  ["sg-076b871708f2b2227"]
  tags = {
    Name = var.components[count.index]
  }
}

variable "components" {
  default = ["frontend", "backend", "mysql"]
}