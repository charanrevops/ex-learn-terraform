variable "marks" {
  default = 50
}

output "grade" {
  vale = var.marks > 80? "first class" : "second class"
}

#syntax: condition ? true_val : false_val