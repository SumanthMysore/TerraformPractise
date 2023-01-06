variable "instance" {
  default = {
    ami           = "ami-0283a57753b18025b"
    instance_type = "t2.micro"
    storage       = 21
    tags = {
      "Created By"  = "Sumanth Mysore"
      "Description" = "EC2 instance created by terraform script."
    }
  }
}

variable "instance_name" {
  type = string
}

# ssh-keygen -y -f /home/sumaM/Downloads/cicd-keypair.pem >> /home/sumaM/Downloads/terraform_ec2_key.pub

variable "public_key" {
  default = "/home/sumaM/Downloads/terraform_ec2_key.pub"
}

variable "inbound_rules" {
  type = list(object({
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = string
  }))
  default = [
    {
      from_port  = 22
      to_port    = 22
      protocol   = "tcp"
      cidr_block = "0.0.0.0/0"
    },
    {
      from_port  = 80
      to_port    = 80
      protocol   = "tcp"
      cidr_block = "0.0.0.0/0"
    },
  ]
}