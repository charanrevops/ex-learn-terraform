variable "xam" {
  default = 10
}

output "x" {
  value = var.xam
}

#List variable


variable "b" {
  default=[
  10,
  "hello",
  true
  ]
}

output "l" {
  value=var.b
}

#second value in list

output "bsecond" {
  value = var.b[1]
}

#map variable
variable "map"{
  default={
    course= "Devops"
    trainer="john"
  }
}

output "course_name" {
  value = var.map["course"]
}

variable "y" {}
output "youtube_value_is_in_billion"{
  value = var.y

}

variable "env" {}
output "env" {
  value = var.env
}

varible "url" {}
output "url" {
  value=var.url
}