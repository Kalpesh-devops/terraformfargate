resource "aws_ecs_service" "python_proc_service" {
    name = "python_proc_service"
    cluster = aws_ecs_cluster.python_proc_clust.id
    task_definition = aws_ecs_task_definition.pythonpro.arn
    desired_count = 1
     launch_type     = "FARGATE"
    

    load_balancer {
        target_group_arn = aws_lb_target_group.target_gr.arn
        container_name =  "python-project-container"
        container_port = 80
      
    }
    
    network_configuration {
      assign_public_ip = true
      subnets = [aws_subnet.subnets_private[0].id,aws_subnet.subnets_private[1].id,aws_subnet.subnets_private[2].id]
      security_groups = [ aws_security_group.mini-project-sg.id]
      
    }
    depends_on = [ aws_lb_listener.listner]
    
  
}