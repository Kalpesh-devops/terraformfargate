resource "aws_route_table" "publiic-rt" {
    vpc_id = aws_vpc.vpc_main.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw_pro.id
    }
    tags = {
      name="publiic-rt"
    
    }

}
#here we are doing public subnet association
resource "aws_route_table_association" "public_rt_asso" {
    route_table_id = aws_route_table.publiic-rt.id
    count = length(var.az-public)
    subnet_id = aws_subnet.subnets_public[count.index].id


}
    


