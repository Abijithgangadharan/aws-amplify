resource "aws_amplify_app" "example" {
  name              = var.app_name
  repository        = var.repository
  oauth_token       = var.github_token
  build_spec        = file(var.build_spec_file)
  environment_variables = var.environment_variables

  custom_rule {
    source = var.custom_rules[0].source
    target = var.custom_rules[0].target
    status = var.custom_rules[0].status
  }

  tags = var.tags
}

output "app_id" {
  value = aws_amplify_app.example.id
}

output "app_url" {
  value = aws_amplify_app.example.default_domain
}
