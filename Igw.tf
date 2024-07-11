
# Create Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.lamp-vpc.id
  tags = {
    Name = "Lamp_IGW"
  }
}