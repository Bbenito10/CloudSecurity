resource "aws_elb" "app" {
  name               = "app-elb"
  subnets            = [aws_subnet.public.id]
  security_groups    = [aws_security_group.elb.id]
  instances          = [aws_instance.web.id]
  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }
}
