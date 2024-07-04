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

data "aws_ami" "image_id" {
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]

}