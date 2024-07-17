output "rest_api_id" {
  description = "The ID of the REST API"
  value       = aws_api_gateway_rest_api.example.id
}

output "rest_api_url" {
  description = "The URL of the REST API"
  value       = "https://${aws_api_gateway_rest_api.example.id}.execute-api.${var.region}.amazonaws.com/prod-${random_string.suffix.result}"
}

output "stage_name" {
  description = "The name of the API Gateway stage"
  value       = aws_api_gateway_stage.example.stage_name
}

output "api_id" {
  description = "The ID of the API Gateway"
  value       = aws_api_gateway_rest_api.example.id
}
