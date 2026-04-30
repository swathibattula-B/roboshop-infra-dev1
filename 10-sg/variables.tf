variable "project" {
    default = "roboshop"   
}
variable "environment" {
    default = "dev"   
}

variable "sg_name" {
    type= list
    default = [
       # Databases
        "mongodb", "redis", "mysql", "rabbitmq",
        "ingress_alb",
        # Bastion
        "bastion",
        "open-vpn",
        "eks_control_plane","eks_node"
        
    ]   
}

