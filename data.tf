data "azurerm_resource_group" "main" {
  name = var.resource_group
}

locals {
  subnets = [{
    subnet_name    = var.subnet_name
    subnet_cidr    = var.subnet_cidr
    security_group = var.security_group
  }]

  enable_bastion = var.enable_bastion == true ? 1 : 0

  common_tags = tomap({
    Environment = var.environment
    Terraform   = "true"
  })
}