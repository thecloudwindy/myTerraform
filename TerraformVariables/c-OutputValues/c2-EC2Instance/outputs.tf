output "ec2_instance_public_ip" {
  description = "EC2 Instance Public IP"
  value = aws_instance.myEC2[0].public_ip
}

output "ec2_instance_private_ip" {
  description = "EC2 Instance Private IP"
  value = aws_instance.myEC2[0].private_ip
}
