output "myoutputs" {
  value = aws_s3_bucket.myS3Bucket.bucket
  description = "Output of S3 Bucket"
}
