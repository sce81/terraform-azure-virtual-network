variable "name" {
  type = string
}
variable "resource_group" {
  type = string
}
variable "network_cidr" {
  type    = list(string)
  default = []
}
variable "subnet_name" {
  type    = list(string)
  default = []
}
variable "subnet_cidr" {
  type    = list(string)
  default = []
}
variable "security_group" {
  type    = list(any)
  default = []
}
variable "extra_tags" {
  type    = map(any)
  default = {}
}
variable "environment" {
  type = string
}
