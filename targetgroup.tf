resource "aws_lb_target_group" "target_gr" {
    target_type ="ip"
    name     = "target-group"
    port     = 80
    protocol = "HTTP"
    vpc_id   = aws_vpc.vpc_main.id

    health_check {
        path = "/"
        interval = "30"
        timeout = "5"
        healthy_threshold = "2"
        unhealthy_threshold = "2"
        matcher ="200" 
    }

}


  
