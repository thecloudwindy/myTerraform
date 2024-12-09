resource "aws_instance" "myEC2" {
  ami = data.aws_ami.amazonlinux.id
  instance_type = var.my_instance_type[0]
  vpc_security_group_ids = [ aws_security_group.mySecurityGroupRules.id ]
  subnet_id = aws_subnet.myPublicSubnet.id
  key_name = var.my_key_pair
  user_data = file("ec2-user-data.sh")
  root_block_device {
    delete_on_termination = true 
    volume_size = var.my_volume_size
    volume_type = "gp3"
  }
  count = var.instance_count
  tags = {
    Name = "MyInstance-${count.index}"
  }
}
