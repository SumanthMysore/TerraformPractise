variable "filename" {
  default = [ "./files/pet1.txt", "./files/pet2.txt", "./files/pet3.txt" ]
  type = list(string)
}
