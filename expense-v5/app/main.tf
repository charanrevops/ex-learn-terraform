resource "aws_instance" "node" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids =  var.vpc_security_group_ids

  tags = {
    Name = var.name
  }

  connection {
    type     = "ssh"
    user     = "root"
    password = var.root_password
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "puppet apply",
      "consul join ${aws_instance.web.private_ip}",
    ]
  }
}





resource "aws_route53_record" "record" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.charanrdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.node.private_ip]
}

