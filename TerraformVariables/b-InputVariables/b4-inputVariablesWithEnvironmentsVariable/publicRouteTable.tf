resource "aws_route_table" "publicRouteTable" {
  vpc_id = aws_vpc.myVPC.id 
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myIGW.id
  }
  tags = {
    Name = "publicRouteTable"
  }
}

resource "aws_route_table_association" "myAssociationSubnets" {
  subnet_id = aws_subnet.myPublicSubnet.id 
  route_table_id = aws_route_table.publicRouteTable.id 
}
