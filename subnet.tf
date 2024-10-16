resource "aws_subnet" "subnets_public" {
    vpc_id = aws_vpc.vpc_main.id
    count = length(var.az-public)
    availability_zone =var.az-public[count.index]
   # cidr_block = var.cidr_block_of_subnet[count.index]
    cidr_block=cidrsubnet(aws_vpc.vpc_main.cidr_block,8,count.index+1)

    tags = {
      Name="public_sub ${count.index+1}"
    }

}

resource "aws_subnet" "subnets_private" {
    vpc_id = aws_vpc.vpc_main.id
    count = length(var.az-private)
    availability_zone = var.az-private[count.index]
    cidr_block = cidrsubnet(aws_vpc.vpc_main.cidr_block,8,count.index+3)
    tags = {
        Name="private_sub ${count.index+1}"

    }


  
}