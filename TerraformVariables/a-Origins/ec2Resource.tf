# EC2 INSTANCE

resource "aws_instance" "myEC2Instance" {
  ami = data.aws_ami.amazonLinux.id 
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.mySecurityGroup.id ]
  subnet_id = aws_subnet.myPublicSubnet.id 
  key_name = "myKeyPair"
  user_data = file("ec2-user-data.sh")
  root_block_device {
    delete_on_termination = true
    volume_size = 20 
    volume_type = "gp3"
  }
  count = 2
  tags = {
    Name = "MyInstance-${count.index}"
  }
}
