resource "aws_lambda_function" "lambda" {
  function_name = var.lambda_function_name
  s3_bucket     = var.s3_bucket
  s3_key        = var.s3_key
  handler       = var.handler
  runtime       = var.runtime
  role          = var.role_arn
}

output "lambda_function_arn" {
  value = aws_lambda_function.lambda.arn
}
