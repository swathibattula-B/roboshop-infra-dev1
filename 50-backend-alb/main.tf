resource "aws_lb" "test" {
  name               = "${var.project}-${var.environment}"  #reboshop-dev
  internal           = true
  load_balancer_type = "application"
  security_groups    = [local.backend_alb_sg_id]
  subnets            = local.private_subnet_ids

  enable_deletion_protection = false

  

  tags = common_tags = {
        Project = var.project
        Environment = var.environment
        Terraform = "true"
    }
}