resource "local_file" "my-pet-file" {
  filename = "./files/no-pets.txt"
  content = "I don't like pets."
  depends_on = [
    random_pet.my-pet
  ]
}

resource "random_pet" "my-pet" {
  prefix = "mr"
  separator = "."
  length = "1"
}
