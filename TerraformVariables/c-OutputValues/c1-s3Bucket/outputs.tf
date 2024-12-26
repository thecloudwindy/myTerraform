output "myoutputs" {
  description = "Name of S3 Bucket"
  value = aws_s3_bucket.mys3bucket.bucket
}
