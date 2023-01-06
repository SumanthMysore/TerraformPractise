resource "local_file" "my-hobby" {
  filename = var.filename
  content = var.content["statement2"]
}

resource "random_pet" "my-pet" {
  prefix = var.prefix[2]
  separator = var.separator
  length = var.length[0]
}

resource "local_file" "details" {
  filename = var.myobject.name["2"]
  content = var.myobject.hobby[1]
}

resource "local_file" "new-file" {
  filename = var.mytuple[0]
  content = var.mytuple[1]
}