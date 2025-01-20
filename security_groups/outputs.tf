output "elb_security_group_id" {
  value = aws_security_group.elb.id
}

output "ec2_security_group_id" {
  value = aws_security_group.ec2.id
}
