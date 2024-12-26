locals {
  bucket_name = "${var.app-name}-${var.environment_name}-mybucket"
}

resource "aws_s3_bucket" "myS3Bucket" {
  bucket = local.bucket_name # "${var.app-name}-${var.environment_name}-mybucket"
  tags = {
    Name = local.bucket_name # "${var.app-name}-${var.environment_name}-mybucket"
    Environment = var.environment_name
  }
}
