variable "my_instance_type" {
  description = "Instance Type"
  type = string 
  default = "t2.micro"
}

variable "my_key_pair" {
  description = "Key Name"
  type = string 
  default = "myKeyPair"
}

variable "instance_count" {
  description = "Number of EC2 Instances"
  type = number
  default = 3
}

variable "my_volume_size" {
  description = "Volume size"
  type = number
  default = 30
}

variable "my_region" {
  description = "Region"
  type = string 
  default = "us-east-1"
}
