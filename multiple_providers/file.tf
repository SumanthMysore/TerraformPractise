resource "local_file" "my-hobby" {
  filename = "./files/hobby.txt"
  content = "Playing cricket"
}

resource "random_pet" "my-pet" {
  prefix = "mr"
  separator = "."
  length = "1"
}
