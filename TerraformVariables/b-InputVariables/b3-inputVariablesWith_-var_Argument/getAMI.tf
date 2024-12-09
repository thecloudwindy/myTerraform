data "aws_ami" "amazonlinux" {
  owners = ["amazon"]
  most_recent = true 
  filter {
    name = "name"
    values = [ "amzn2-ami-hvm*-gp2" ]
  }
  filter {
    name = "root-device-type"
    values = [ "ebs" ]
  }
  filter {
    name = "virtualization-type"
    values = [ "hvm" ]
  }
  filter {
    name = "architecture"
    values = ["x86_64"]
  }
}
