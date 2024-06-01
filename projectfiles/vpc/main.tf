resource "aws_vpc" "myvpc" {
    cidr_block = var.cidr_block_vpc
    tags = {
    Name = var.vpcname
    }
  
}
resource "aws_subnet" "publicsubnet1" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.cidr_block_publicsubnet1
    availability_zone = "ap-south-1a"
  
}
resource "aws_subnet" "publicsubnet2" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.cidr_block_publicsubnet2
    availability_zone = "ap-south-1b"
  
}


resource "aws_internet_gateway" "mygateway" {
    vpc_id = aws_vpc.myvpc.id
    
}
resource "aws_route_table" "publicRT1" {
    vpc_id = aws_vpc.myvpc.id
    route {
        cidr_block = var.routecidr1
        gateway_id = aws_internet_gateway.mygateway.id
    }
  
}
resource "aws_route_table" "publicRT2" {
    vpc_id = aws_vpc.myvpc.id
    route {
        cidr_block = var.routecidr2
        gateway_id = aws_internet_gateway.mygateway.id
    }
  
}
resource "aws_route_table_association" "pubicrtassociation1" {
    subnet_id = aws_subnet.publicsubnet1.id
    route_table_id = aws_route_table.publicRT1.id
  
}
resource "aws_route_table_association" "pubicrtassociation2" {
    subnet_id = aws_subnet.publicsubnet2.id
    route_table_id = aws_route_table.publicRT2.id
  
}
resource "aws_security_group" "mysg" {
    vpc_id = aws_vpc.myvpc.id
    tags = {
        Name=var.securitygroupname
    }
    ingress {
    from_port   = var.port_no_inbound
    to_port     = var.port_no_inbound
    protocol    = "tcp"
    cidr_blocks = [var.cidr_block_inbound]
    }
    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }

  
}