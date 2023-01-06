resource "aws_instance" "myinstance" {
  ami           = var.instance.ami
  instance_type = var.instance.instance_type
  root_block_device {
    volume_size = var.instance.storage
  }
  tags = {
    "Name"        = var.instance.name
    "Created By"  = var.instance.tags["Created By"]
    "Description" = var.instance.tags["Description"]
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.myinstance.public_ip} >> ./ip.txt "
  }
}
