terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.2.0"
    }
  }
}

resource "local_file" "demo" {
  filename = "./files/myfile.txt"
  content = "Using hashicorp/local 2.2.0 version."
}
