# PUBLIC ROUTE TABLE

resource "aws_route_table" "myPublicRouteTable" {
  vpc_id = aws_vpc.myVPC.id 
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myIGW.id 
  }
  tags = {
    Name = "myPublicRouteTable"
  }
}

resource "aws_route_table_association" "myAssociatePublicSubnets" {
  subnet_id = aws_subnet.myPublicSubnet.id 
  route_table_id = aws_route_table.myPublicRouteTable.id
}
