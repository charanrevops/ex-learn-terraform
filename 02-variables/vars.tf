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

output "second num" {
  value = var.l[1]
}