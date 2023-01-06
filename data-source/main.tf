resource "local_file" "demo" {
  filename = "./files/myfile.txt"
  content = data.local_file.mydata.content
}

data "local_file" "mydata" {
  filename = "./sun.txt"
}
