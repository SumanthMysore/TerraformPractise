resource "local_file" "demo" {
  filename = "files/new-file.txt"
  content = "Demo file modified"
  file_permission = "0777"
  lifecycle {
    ignore_changes = [
      content
    ]
  }
}
