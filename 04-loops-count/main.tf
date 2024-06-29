resource "null_resource" "test" {
  count = 3
}

resource "null_resource" "test" {
  count = length(var.fruits)
}

variable "fruits" {
  default = ["apple","banana"]
}

