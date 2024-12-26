resource "aws_vpc" "myVPC" {
  cidr_block = local.vpc_cidr_block
  tags = {
    Name = local.vpc_name
  }
}

resource "aws_subnet" "public" {
  vpc_id = aws_vpc.myVPC.id
  cidr_block = local.public_subnet_cidr
  tags = {
    Name = "${local.vpc_name}-public-subnet"
  }
}

resource "aws_subnet" "private" {
vpc_id = aws_vpc.myVPC.id
  cidr_block = local.private_subnet_cidr
  tags = {
    Name = "${local.vpc_name}-private-subnet"
  }
}

resource "aws_instance" "web" {
  ami = "ami-08eec49a05b603ba3"
  instance_type = var.ec2_instance_type
  subnet_id = aws_subnet.public.id
  tags = {
    Name = local.instance_name
  }
}

