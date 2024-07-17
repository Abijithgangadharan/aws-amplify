variable "domain_name" {
  description = "The domain name for the Route 53 hosted zone"
  type        = string
}

variable "record_name" {
  description = "The name of the DNS record"
  type        = string
}

variable "record_value" {
  description = "The value of the DNS record"
  type        = string
}

variable "api_name" {
  description = "The name of the API Gateway"
  type        = string
}

variable "path_part" {
  description = "The path part of the API Gateway resource"
  type        = string
}

variable "region" {
  description = "The AWS region where resources will be created"
  type        = string
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
}


variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "hash_key" {
  description = "The name of the hash key"
  type        = string
}

variable "hash_key_type" {
  description = "The type of the hash key (e.g., S for string)"
  type        = string
}

variable "billing_mode" {
  description = "The billing mode of the DynamoDB table"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

# variable "tags" {
#   description = "Tags for the resources"
#   type        = map(string)
#   default     = {}
# }
# variable "region" {
#   description = "The AWS region where resources will be created"
#   type        = string
# }

