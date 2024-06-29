resource "null_resource" "test" {
  count = 3
}

resource "null_resource" "test1" {
  count = length(var.fruits)
}

variable "fruits" {
  default = ["apple","banana"]
}

