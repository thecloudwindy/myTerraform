module "myapp" {
  source = "../myModuleA"
  ami = "ami-01816d07b1128cd2d"
  myRegion = "us-east-1"
}
