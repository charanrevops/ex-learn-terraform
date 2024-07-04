data"aws_route53_zone" "main"{
  name              =       "charanrdevops.online"
  private_zone      =        false
}


data "aws_security_group" "allow-all" {
  filter {
    name   = "group-name"
    values = ["allow-all"]
  }
}

output "sg"{
  value = data.aws_security_group.allow-all

