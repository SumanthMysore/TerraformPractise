variable "instance" {
  default = {
    name          = "terraform-provisioner-taint-demo"
    ami           = "ami-0283a57753b18025b"
    instance_type = "t2.micro"
    storage       = 20
    tags = {
      "Created By"  = "Sumanth Mysore"
      "Description" = "EC2 instance created by terraform script."
    }
  }
}
