variable "desired_capacity" {
  description = "The desired capacity of the Auto Scaling group"
  default     = 2
}

variable "max_size" {
  description = "The maximum size of the Auto Scaling group"
  default     = 3
}

variable "min_size" {
  description = "The minimum size of the Auto Scaling group"
  default     = 1
}

variable "vpc_zone_identifier" {
  description = "A list of subnet IDs for the Auto Scaling group"
}

variable "launch_configuration" {
  description = "The name of the launch configuration"
}
