# terraform {
#   backend "s3" {
#     bucket         = "service-terraform-state-backend"
#     key            = "terraform.tfstate"
#     region         = "eu-west-1"
#     dynamodb_table = "terraform_state"
#   }
# }