resource "aws_eip" "elastic_ip" {
    domain = "vpc"
    
}

#here we are creating resource nat
resource "aws_nat_gateway" "nat_pro" {
     
     allocation_id = aws_eip.elastic_ip.id
    subnet_id = aws_subnet.subnets_public[0].id 

    tags = {
      Name="natgate"
    }



}


  