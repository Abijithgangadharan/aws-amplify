module "route53" {
  source = "../modules/route53"
  domain_name = var.domain_name
  record_name = var.record_name
  record_value = var.record_value
  tags = var.tags
}


module "api_gateway" {
  source     = "../modules/api_gateway"
  api_name   = var.api_name
  path_part  = var.path_part
  region     = var.region
  tags       = var.tags
}

module "dynamodb" {
  source     = "../modules/dynamodb"
  table_name = "my-dynamodb-table"
  hash_key   = "id"
  tags = {
    Environment = "dev"
    Project     = "my-project"
  }
}


# module "s3" {
#   source = "../modules/s3"

#   bucket_name = "my-example-bucket"
#   acl         = "private"
#   tags = {
#     Environment = "dev"
#     Project     = "my-project"
#   }

#   versioning_enabled      = true
#   logging_target_bucket   = "logging-bucket"
#   logging_target_prefix   = "log/"
#   sse_algorithm           = "aws:kms"
#   kms_master_key_id       = "your-kms-key-id"
#   bucket_policy           = jsonencode(your_bucket_policy)
#   block_public_acls       = true
#   block_public_policy     = true
#   ignore_public_acls      = true
#   restrict_public_buckets = true
# }
