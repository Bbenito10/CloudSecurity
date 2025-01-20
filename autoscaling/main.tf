resource "aws_launch_configuration" "app" {
  name          = "app-launch-configuration"
  image_id      = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.ec2.name]
  user_data      = file("${path.module}/../scripts/user_data.sh")
}

resource "aws_autoscaling_group" "app" {
  desired_capacity     = 2
  max_size             = 3
  min_size             = 1
  vpc_zone_identifier  = [aws_subnet.public.id]
  launch_configuration = aws_launch_configuration.app.name
  tags = [{
    key                 = "Name"
    value               = "app-instance"
    propagate_at_launch = true
  }]
}
