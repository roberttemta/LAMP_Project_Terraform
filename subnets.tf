
# Create Web Public Subnet
resource "aws_subnet" "lamp-subnet" {
  vpc_id                  = aws_vpc.lamp-vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "lamp-subnet"
  }
}