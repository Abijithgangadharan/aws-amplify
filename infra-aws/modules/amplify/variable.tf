variable "app_name" {
  description = "Name of the Amplify app"
  type        = string
}

variable "repository" {
  description = "GitHub repository URL"
  type        = string
}

variable "github_token" {
  description = "GitHub OAuth token"
  type        = string
}

variable "build_spec_file" {
  description = "Path to the Amplify build specification file"
  type        = string
}

variable "environment_variables" {
  description = "Environment variables for the Amplify app"
  type        = map(string)
  default     = {}
}

variable "custom_rules" {
  description = "Custom rules for Amplify"
  type        = list(object({
    source = string
    target = string
    status = string
  }))
  default     = []
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
  default     = {}
}
