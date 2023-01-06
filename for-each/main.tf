resource "local_file" "pets" {
  filename = each.value
  for_each = toset(var.filename)
  content = "I like Pets."
}
