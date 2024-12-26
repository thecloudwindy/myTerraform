resource "random_id" "random_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = "mybucket-${random_id.random_suffix.hex}"
}
