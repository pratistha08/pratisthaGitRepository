resource "aws_subnet" "public_subnet1"{

    vpc_id =  aws_vpc.main.id 

    cidr_block = "192.168.0.0/16"

    availability_zone = "us-east-1a"

    map_public_ip_on_launch = true
}