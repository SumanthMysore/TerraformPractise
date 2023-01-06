module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  ami           = var.instance.ami
  instance_type = var.instance.instance_type
  tags = {
    "Name"        = var.instance.name
    "Created By"  = var.instance.tags["Created By"]
    "Description" = var.instance.tags["Description"]
  }
}
