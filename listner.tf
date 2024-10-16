resource "aws_lb_listener" "listner" {
    load_balancer_arn = aws_lb.app-loadb.arn
    port = "80"
    protocol = "HTTP"
    
    default_action {
        type = "forward"
        target_group_arn = aws_lb_target_group.target_gr.arn
      
    }

  
}