provider "aws" {
  region = var.region
}

module "amplify" {
  source              = "../modules/amplify"
  app_name            = var.app_name
  repository          = var.repository
  github_token        = var.github_token
  build_spec_file     = var.build_spec_file
  environment_variables = var.environment_variables
  custom_rules        = var.custom_rules
  tags                = var.tags
}
