locals {
    ami_id = data.aws_ami.joindevops.id
    common_tags = {
        project = var.project
        environment = var.environment
        terraform = "true"
    }
    public_subnet_id = split(",",data.aws_ssm_parameter.public_subnet_ids.value)[0]
    bastion_sg_id = "sg-09fd46ad01fdbe8a3"
}