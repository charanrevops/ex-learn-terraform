variable "x" {
  default = 10
}

output "x" {
  value = var.x
}

#List variable


variable "l" {
  default=[
  10,
  "hello",
  true
  ]
}

output "l" {
  value=var.l
}

#second value in list

output "lsecond" {
  value = var.l[1]
}

#map variable
variable "map"{
  default={
    course= "Devops"
    trainer="john"
  }
}

output "course_name" {
  value == var.map["course"]
}