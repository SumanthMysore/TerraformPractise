resource "aws_instance" "myinstance" {
  ami           = var.instance.ami
  instance_type = var.instance.instance_type
  root_block_device {
    volume_size = var.instance.storage
  }
  tags = {
    "Name"        = var.instance_name
    "Created By"  = var.instance.tags["Created By"]
    "Description" = var.instance.tags["Description"]
  }
  key_name               = aws_key_pair.my-key.id
  vpc_security_group_ids = [aws_security_group.my_sg.id]
}
