# terraform-azure-virtual-network
### All code is provided for reference purposes only and is used entirely at own risk. Code is for use in development environments only. Not intended for Production use. 


Terraform module for creating an Azure VNET


## Usage

    module "example" {
      source = "git@github.com:sce81/terraform-azure-virtual-network.git"
      environment       = "dev"
      name              = "example"
      resource_group    = data.azurerm_resource_group.example.name
      subnet_name       = module.example_keyvault.id
      subnet_cidr       = "10.0.0.0/16"
      security_group    = []
    }


### Prerequisites

Terraform ~> 1.7.0  

### Tested

Terraform ~> 1.7.0  

### Outputs

    id:     =  azurerm_virtual_network.main.id
    name:   =  azurerm_virtual_network.main.name
    cidr:   =  azurerm_virtual_network.main.address_space
    subnet: =  azurerm_virtual_network.main.subnet[*].id
    guid:   =  azurerm_virtual_network.main.guid