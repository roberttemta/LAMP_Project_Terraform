
# Create Web layer route table
resource "aws_route_table" "web-rt" {
  vpc_id = aws_vpc.lamp-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "lamp_WebRT"
  }
}


# Create Web Subnet association with Web route table
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.lamp-subnet.id
  route_table_id = aws_route_table.web-rt.id
}