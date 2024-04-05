provider "aws" {
  region = "us-east-1"
  access_key = "AKIAXCFEXUSSJOMPM6SK"
  secret_key = "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"
}

module "ec2_instancemodule" {
  source = "./ec2_instancemodule"
  ami_id = "ami-080e1f13689e07408"
instance_type = "t2.micro"
}

module "loadbalancer_module" {
  source = "./loadbalancer_module"
  lb_sg = [ "sg-098b78552db0fcb9b" ]
  lb_subnets = [ "subnet-0efa8fe08048e28ba","subnet-0377e9af16ec9227f" ]
  lb_type = "application"
}