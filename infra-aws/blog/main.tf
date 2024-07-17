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

# module "route53" {
#   source       = "../modules/route53"
#   domain_name  = var.domain_name
#   record_name  = var.record_name
#   record_value = var.record_value
#   tags         = var.tags
# }

# output "route53_zone_id" {
#   value = module.route53.zone_id
# }

# output "route53_record_id" {
#   value = module.route53.record_id
# }