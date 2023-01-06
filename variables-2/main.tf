resource "local_file" "demo" {
  filename = var.filename1
  content = var.content1
  file_permission = var.file_permission1
}