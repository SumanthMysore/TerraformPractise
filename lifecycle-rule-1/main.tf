resource "local_file" "demo" {
  filename = "files/demo.txt"
  content = "Demo file"
  file_permission = "0777"
  lifecycle {
    create_before_destroy = true
  }
}
