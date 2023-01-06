resource "local_file" "my-pet-file" {
  filename = "./files/pets.txt"
  content = "My pet is ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet" {
  prefix = "mr"
  separator = "."
  length = "1"
}
