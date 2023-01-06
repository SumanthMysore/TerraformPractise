resource "local_file" "pets" {
  filename = var.filename[count.index]
  content = "I like Pets."
  count = length(var.filename)
}
