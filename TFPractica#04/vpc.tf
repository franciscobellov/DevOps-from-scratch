resource "aws_vpc" "vpc_virginia" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "VPC_VIRGINIA"
    name = "prueba"
    env = "Dev"

  }
}

resource "aws_vpc" "vpc_Ohrio" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "VPC_OHRIO"
    name = "prueba"
    env = "Dev"

  }
  provider = aws.ohio
}