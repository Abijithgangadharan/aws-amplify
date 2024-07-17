output "zone_id" {
  description = "The ID of the Route 53 hosted zone"
  value       = module.route53.zone_id
}

output "api_id" {
  description = "The ID of the API Gateway"
  value       = module.api_gateway.api_id
}

output "table_name" {
  description = "The name of the DynamoDB table"
  value       = module.dynamodb.table_name
}

# output "bucket_name" {
#   description = "The name of the S3 bucket"
#   value       = module.s3.bucket_name
# }
