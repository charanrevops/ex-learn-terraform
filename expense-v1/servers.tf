resource "aws_instance" "frontend" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t2.micro"

  tags = {
    Name = "frontend"
  }
}