resource "aws_instance" "zomato" {
  ami = var.ami_id
  instance_type = var.instance_type

}
resource "aws_instance" "zomato1" {
  ami = var.ami_id
  instance_type = var.instance_type

}