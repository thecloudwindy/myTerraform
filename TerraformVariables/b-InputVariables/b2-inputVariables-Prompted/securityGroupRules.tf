resource "aws_security_group" "mySecurityGroupRules" {
  description = "Allow protocols: http, https, ssh, icmpIPv4"
  name = "mySecurityGroupRules"
  vpc_id = aws_vpc.myVPC.id 
  tags = {
    Name = "mySecurityGroupRules"
  }
}

resource "aws_vpc_security_group_ingress_rule" "http" {
  security_group_id = aws_security_group.mySecurityGroupRules.id 
  cidr_ipv4 = "0.0.0.0/0"
  from_port = "80"
  to_port = "80"
  ip_protocol = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "https" {
  security_group_id = aws_security_group.mySecurityGroupRules.id 
  cidr_ipv4 = "0.0.0.0/0"
  from_port = "443"
  to_port = "443"
  ip_protocol = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.mySecurityGroupRules.id 
  cidr_ipv4 = "0.0.0.0/0"
  from_port = "22"
  to_port = "22"
  ip_protocol = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "icmpIPv4" {
  security_group_id = aws_security_group.mySecurityGroupRules.id 
  cidr_ipv4 = "0.0.0.0/0"
  from_port = "-1"
  to_port = "-1"
  ip_protocol = "icmp"
}

resource "aws_vpc_security_group_egress_rule" "outbound" {
  security_group_id = aws_security_group.mySecurityGroupRules.id 
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "-1"
}
