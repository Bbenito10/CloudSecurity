variable "ami" {
  description = "The ID of the AMI to use for the instance"
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  description = "The type of instance to use"
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance in"
}

variable "security_groups" {
  description = "A list of security groups to associate with the instance"
}
