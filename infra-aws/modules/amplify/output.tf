output "app_id" {
  description = "The ID of the Amplify application"
  value       = aws_amplify_app.example.id
}

output "app_url" {
  description = "The URL of the Amplify application"
  value       = aws_amplify_app.example.default_domain
}
