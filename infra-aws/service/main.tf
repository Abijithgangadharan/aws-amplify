provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket         = "service-terraform-state-backend"
    key            = "terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform_state"
  }
}


module "s3_bucket" {
  source = "../modules/s3"

  bucket_name        = "my-lambda-bucket-0312"
  s3_key             = "lambda_code.zip"
  lambda_source      = "./lambda_code.zip"  # Update this path to your actual lambda code location
}

module "iam_role" {
  source = "../modules/iam_role"
}

module "lambda" {
  source = "../modules/lambda"

  lambda_function_name = "my_lambda_function"
  s3_bucket            = module.s3_bucket.bucket_name
  s3_key               = "lambda_code.zip"
  handler              = "index.handler"
  runtime              = "nodejs20.x"
  role_arn             = module.iam_role.arn
}

module "cloudwatch" {
  source = "../modules/cloudwatch"

  log_group_name = "/aws/lambda/my_lambda_function"
  retention_in_days = 14
}

module "dynamodb_table" {
  source = "../modules/dynamodb_table"

  table_name = "custom_table"
  hash_key   = "id"
  attributes = [
    {
      name = "id"
      type = "S"
    }
  ]
  billing_mode = "PAY_PER_REQUEST"
  tags = {
    Environment = "Dev"
    Name        = "CustomTable"
  }
}
