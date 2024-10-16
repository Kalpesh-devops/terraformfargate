resource "aws_internet_gateway" "igw_pro" {
   vpc_id = aws_vpc.vpc_main.id

   tags = {
     Name="igw_pro"
   }
  
}