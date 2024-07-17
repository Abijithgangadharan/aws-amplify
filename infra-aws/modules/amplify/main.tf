resource "aws_amplify_app" "example" {
  name        = var.app_name
  repository  = var.repository
  oauth_token = var.oauth_token
  platform    = "WEB"
  build_spec  = file(var.build_spec_file)

  environment_variables = var.environment_variables

  tags = var.tags

  lifecycle {
    ignore_changes = [oauth_token]
  }
}

resource "aws_amplify_branch" "example" {
  app_id      = aws_amplify_app.example.id
  branch_name = var.branch
  description = "Main branch for deployment"
  tags        = var.tags

  environment_variables = var.environment_variables

  basic_auth_credentials = var.basic_auth_credentials
  enable_basic_auth      = var.enable_basic_auth
}

resource "aws_route53_record" "amplify" {
  zone_id = var.route53_zone_id
  name    = var.domain_name
  type    = "CNAME"
  ttl     = 300
  records = [aws_amplify_app.example.default_domain]
}
