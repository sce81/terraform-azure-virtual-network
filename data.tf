data "azurerm_resource_group" "main" {
  name = var.resource_group
}

locals {
  subnets = [{
    subnet_name    = var.subnet_name
    subnet_cidr    = var.subnet_cidr
    security_group = var.security_group
  }]
  
  common_tags = tomap({
    Environment = var.environment
    Terraform   = "true"
  })
}