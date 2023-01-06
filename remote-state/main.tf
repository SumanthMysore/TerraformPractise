resource "local_file" "state" {
  filename = "./${var.local-state}"
  content  = "This configuration uses ${var.local-state} state"
}

terraform {
  backend "s3" {
    bucket         = "terraform-remote-state-sumanthmysore"
    key            = "remote/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "dynamodb-state-locking-sumanthmysore"
  }
}
