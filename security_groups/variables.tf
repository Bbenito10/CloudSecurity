variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "elb_security_group" {
  description = "Security group for the ELB"
  default     = "elb-security-group"
}

variable "ec2_security_group" {
  description = "Security group for the EC2 instances"
  default     = "ec2-security-group"
}
