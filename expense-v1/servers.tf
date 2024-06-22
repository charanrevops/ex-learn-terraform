resource "aws_instance" "frontend-front" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t2.micro"
  vpc_security_group_ids =  ["sg-076b871708f2b2227"]
  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t2.micro"
  vpc_security_group_ids =  ["sg-076b871708f2b2227"]
  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t2.micro"
  vpc_security_group_ids =  ["sg-076b871708f2b2227"]
  tags = {
    Name = "mysql"
  }
}