resource "aws_instance" "import_instance" {
  ami                                  = "ami-0283a57753b18025b"
  instance_type                        = "t2.micro"
}