resource "aws_s3_bucket" "dev-lab" {
  bucket = "thallyta-lab-dev"

  tags = {
    Name = "thallyta-lab-dev"
  }
}

resource "aws_s3_bucket_public_access_block" "dev-lab" {
  bucket = aws_s3_bucket.dev-lab.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true
}
