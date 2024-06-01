variable "vpcname" {
    type = string
}
variable "cidr_block_vpc" {
    type = string
}

variable "cidr_block_publicsubnet1" {
  type = string
}
variable "cidr_block_publicsubnet2" {
  type = string
}
variable "routecidr1" {
    type = string
}
variable "routecidr2" {
    type = string
}
variable "securitygroupname" {
    type = string
}
variable "port_no_inbound" {
    type = string
}
variable "cidr_block_inbound" {
    type = string
}