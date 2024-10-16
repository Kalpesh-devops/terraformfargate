variable "az-public" {
    type = list(string)
    default = [ "ap-south-1a","ap-south-1b"]
  }

  variable "az-private" {
    type = list(string)
    default = [ "ap-south-1a","ap-south-1b","ap-south-1c"]
  }

#   #variable "cidr_block_vpc_Main" {
#    description = "cidr block of VPC"
#    default = "50.0.0.0/16"

#    }

   #variable "cidr_block_of_subnet" {
    #type = list(string)
    #default = [ "50.0.1.0/16","50.0.2.0/16","50.0.3.0/16","50.0.4.0/16","50.0.5.0/16" ]
    #}

   

 
    
  