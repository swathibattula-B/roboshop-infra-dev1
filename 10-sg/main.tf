module "sg" {
    source = "../../terraform-aws-sg1"
    project = var.project
    environment = var.environment
    sg_name = "mongodb"
    vpc_id =local.vpc_id

}