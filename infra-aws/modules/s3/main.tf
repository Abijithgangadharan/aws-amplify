# resource "aws_s3_bucket" "example" {
#   bucket = var.bucket_name
#   acl    = var.acl

#   tags = var.tags
# }

# resource "aws_s3_bucket_versioning" "example" {
#   bucket = aws_s3_bucket.example.bucket
#   versioning_configuration {
#     status = var.versioning_enabled ? "Enabled" : "Suspended"
#   }
# }

# resource "aws_s3_bucket_logging" "example" {
#   bucket = aws_s3_bucket.example.bucket

#   logging {
#     target_bucket = var.logging_target_bucket
#     target_prefix = var.logging_target_prefix
#   }
# }

# resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
#   bucket = aws_s3_bucket.example.bucket

#   rule {
#     apply_server_side_encryption_by_default {
#       sse_algorithm = var.sse_algorithm
#       kms_master_key_id = var.kms_master_key_id
#     }
#   }
# }

# resource "aws_s3_bucket_policy" "example" {
#   bucket = aws_s3_bucket.example.bucket
#   policy = var.bucket_policy
# }

# resource "aws_s3_bucket_public_access_block" "example" {
#   bucket = aws_s3_bucket.example.bucket

#   block_public_acls       = var.block_public_acls
#   block_public_policy     = var.block_public_policy
#   ignore_public_acls      = var.ignore_public_acls
#   restrict_public_buckets = var.restrict_public_buckets
# }


resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "private"
}

resource "aws_s3_bucket_object" "lambda_code" {
  bucket = aws_s3_bucket.bucket.bucket
  key    = var.s3_key
  source = var.lambda_source
  etag   = filemd5(var.lambda_source)
}

output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}
