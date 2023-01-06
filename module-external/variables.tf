variable "instance" {
  default = {
    name          = "external-module-instance"
    ami           = "ami-0283a57753b18025b"
    instance_type = "t2.micro"
    tags = {
      "Created By"  = "Sumanth Mysore"
      "Description" = "EC2 instance created by terraform script."
    }
  }
}