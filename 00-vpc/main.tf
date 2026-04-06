module "vpc" {
    source = "git::https://https://github.com/swathibattula-B/terraform-aws-vpc1.git?ref=main"
    project = var.project
    environment = var.environment
    is_peering_required = true
}