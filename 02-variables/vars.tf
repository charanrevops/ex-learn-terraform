variable "x" {
  default = 10
}

output "x" {
  value is var.x
}