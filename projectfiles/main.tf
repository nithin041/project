
module "loadbalancer" {
  source = "./loadbalancer"
  region = "ap-south-1"
  vpc_id = module.vpc.vpc_id
  subnet1 = module.vpc.subnet1
  subnet2 = module.vpc.subnet2
  instance_type = "t2.micro"
  ami_id = "ami-00fa32593b478ad6e"
  
}
module "vpc" {
  source = "./vpc"
  vpcname = var.vpcname
  cidr_block_vpc = var.cidr_block_vpc
  cidr_block_publicsubnet1 = var.cidr_block_publicsubnet1
  cidr_block_publicsubnet2 = var.cidr_block_publicsubnet2
  routecidr2 = var.routecidr2
  routecidr1 = var.routecidr1
  securitygroupname = var.securitygroupname
  port_no_inbound = var.port_no_inbound
  cidr_block_inbound = var.cidr_block_inbound
}