resource "aws_lb" "app-loadb" {
    name = "app-loadb"
    internal = false
    load_balancer_type = "application"
    enable_deletion_protection = false
    security_groups = [aws_security_group.mini-project-sg.id]
    subnets = [aws_subnet.subnets_public[0].id,aws_subnet.subnets_public[1].id]
    
    #subnets = ["aws_subnet.subnets_public[0].id"."aws_subnet.subnets_public[1].id"]


}