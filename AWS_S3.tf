resource "aws_s3_bucket" "madhatter_data_lake" {
  bucket = "madhatter-data-lake-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
    noncurrent_version_expiration {
      days = 30
    }
  }
}
