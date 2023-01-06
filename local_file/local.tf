resource "local_file" "demo" {
  filename = "./files/myfile.txt"
  content = "Terraform practise."
  file_permission = "0777"
}
