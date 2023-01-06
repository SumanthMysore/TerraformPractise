resource "local_file" "demo" {
  filename = "files/demo.txt"
  content = "Demo file"
  file_permission = "0700"
  lifecycle {
    prevent_destroy = true
  }
}
