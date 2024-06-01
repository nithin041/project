output "subnet1" {
  value = aws_subnet.publicsubnet1.id
}
output "subnet2" {
  value = aws_subnet.publicsubnet2.id
}
output "vpc_id" {
  value = aws_vpc.myvpc.id
}
output "security_groups" {
  value = aws_security_group.mysg.id
}
