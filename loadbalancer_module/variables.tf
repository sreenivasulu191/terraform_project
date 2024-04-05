
variable "lb_type" {
  description = "provide load balancer type"
}

variable "lb_sg" {
  description = "provide security groups for load balancer"
  type = list(string)
}

variable "lb_subnets" {
  description = "provide subnets for load balancer"
  type = list(string)
}