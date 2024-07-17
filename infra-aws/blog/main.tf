module "amplify" {
  source                 = "../modules/amplify"
  app_name               = "my-nextjs-app"
  repository             = "https://github.com/my-org/my-nextjs-app"
  branch                 = "main"
  oauth_token            = "your-oauth-token"
  build_spec_file        = "amplify.yml"
  custom_rules           = []
  environment_variables  = {
    NEXT_PUBLIC_API_URL = "https://api.example.com"
  }
  tags = {
    Environment = "dev"
    Project     = "my-project"
  }
  auto_build                   = true
  auto_branch_creation_patterns = ["feature/*", "bugfix/*"]
  basic_auth_credentials       = null
  enable_basic_auth            = false
  route53_zone_id              = "Z1234567890ABCDEF"
  domain_name                  = "app.example.com"
}
