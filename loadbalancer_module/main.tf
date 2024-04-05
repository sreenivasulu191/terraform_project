resource "aws_lb" "zomato_lb" {
  load_balancer_type = var.lb_type
  security_groups    = var.lb_sg
  subnets            = var.lb_subnets

  enable_deletion_protection = true

}