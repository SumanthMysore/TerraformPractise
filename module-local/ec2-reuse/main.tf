module "ec2-reuse" {
  source = "../ec2-config"
  instance_name = "terraform-root-module"
}
