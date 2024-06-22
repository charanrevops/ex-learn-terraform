resource "aws_instance" "frontend-front" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t2.micro"

  tags = {
    Name = "frontend"
  }
}

resource "aws_instance" "backend" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t2.micro"

  tags = {
    Name = "backend"
  }
}

resource "aws_instance" "mysql" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t2.micro"

  tags = {
    Name = "mysql"
  }
}