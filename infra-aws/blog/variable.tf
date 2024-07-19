variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
}

variable "app_name" {
  description = "The name of the Amplify app"
  type        = string
}

variable "repository" {
  description = "The URL of the GitHub repository"
  type        = string
}

variable "github_token" {
  description = "The GitHub OAuth token"
  type        = string
}

variable "build_spec_file" {
  description = "The path to the build specification file"
  type        = string
}

variable "environment_variables" {
  description = "Environment variables for the Amplify app"
  type        = map(string)
}

variable "custom_rules" {
  description = "Custom rules for Amplify"
  type = list(object({
    source = string
    target = string
    status = string
  }))
}

variable "tags" {
  description = "Tags to apply to the resources"
  type        = map(string)
}


