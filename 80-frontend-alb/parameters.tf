resource "aws_ssm_parameter" "frontend_alb_listener_arn" {
  name  = "/${var.project}/${var.environment}/frontend_alb_listener_arn"
  type  = "String"
  value = aws_lb_listener.https.arn
}
resource "aws_ssm_parameter" "frontend_alb_certificate_arn" {
  name      = "/${var.project}/${var.environment}/frontend_alb_certificate_arn"
  type      = "String"
  value     = "arn:aws:acm:us-east-1:846749788810:certificate/02720896-1360-4867-bdf7-2e808888e56f"
  overwrite = true
}

