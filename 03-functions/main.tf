variable "fruits" {

}


output "apple" {
  value="apple quantity is ${var.fruits["apple"]["quantity"]}, price is ${var.fruits["apple"]["price"]}"
}

output "banana" {
  value="apple quantity is ${var.fruits["banana"]["quantity"]}, price is ${lookup(var.fruits["banana"],"price",9)}"
}