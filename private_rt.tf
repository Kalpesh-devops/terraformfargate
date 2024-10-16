resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.vpc_main.id
    route {
        cidr_block="0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.nat_pro.id
    }
    tags = {
        Name="private_rt"
      
    }
    

}


#natgate association for all the private subnets

resource "aws_route_table_association" "private_rt_asso" {
    route_table_id = aws_route_table.private_rt.id
    count = length(var.az-private)
    subnet_id = aws_subnet.subnets_private[count.index].id

}