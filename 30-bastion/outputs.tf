output "bastion_sg_id" {
  value = data.aws_ssm_parameter.bastion_sg_id.value
}