resource "random_id" "random_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "myS3Bucket" {
  bucket = "mybucket-${random_id.random_suffix.hex}"
}
