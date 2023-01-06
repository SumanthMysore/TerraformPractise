variable "region" {
  default = "us-east-2"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  type = map(any)
  default = {
    "ProjectA" = "ami-0283a57753b18025b"
    "ProjectB" = "ami-0a606d8395a538502"
  }
}