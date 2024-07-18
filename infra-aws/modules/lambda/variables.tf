variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "s3_bucket" {
  description = "The S3 bucket containing the Lambda function code"
  type        = string
}

variable "s3_key" {
  description = "The S3 key of the Lambda function code"
  type        = string
}

variable "handler" {
  description = "The handler for the Lambda function"
  type        = string
}

variable "runtime" {
  description = "The runtime for the Lambda function"
  default     = "nodejs20.x"
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role that Lambda assumes"
  type        = string
}
