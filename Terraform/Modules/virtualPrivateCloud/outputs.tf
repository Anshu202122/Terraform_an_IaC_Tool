output "vpc_id" {
  value = aws_vpc.project_vpc.id
}
output "subnet_ids" {
  value = aws_subnet.project_subnets.*.id
}
