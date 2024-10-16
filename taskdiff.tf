resource "aws_ecs_task_definition" "pythonpro" {
    family = "pythonpro"
    requires_compatibilities = ["FARGATE"]
    network_mode = "awsvpc"
    memory = "2048"
    cpu = "1024"
    execution_role_arn = aws_iam_role.ecs_tdf_role.arn
    task_role_arn = aws_iam_role.ecs_tdf_role.arn

    container_definitions  = <<TASK_DEFINITION
      [
     {
        "name": "python-project-container",
        "image": "${aws_ecr_repository.ecr.repository_url}:8",
        "cpu": 1024,
        "memory": 2048,
        "essential": true,
        "portMappings": [
        {
          "containerPort": 80,
          "hostPort": 80
          
          
          
         }
       ]
    
     
    }
  ]
   
  TASK_DEFINITION

}
