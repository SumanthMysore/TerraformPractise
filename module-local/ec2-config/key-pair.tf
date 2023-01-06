resource "aws_key_pair" "my-key" {
  public_key = file("${var.public_key}")
}
