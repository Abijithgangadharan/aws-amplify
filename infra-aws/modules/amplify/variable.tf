variable "app_name" {
  description = "The name of the Amplify application"
  type        = string
}

variable "repository" {
  description = "The repository for the Amplify application"
  type        = string
}

variable "branch" {
  description = "The branch to deploy"
  type        = string
}

variable "oauth_token" {
  description = "The OAuth token for repository access"
  type        = string
  sensitive   = true
}

variable "build_spec_file" {
  description = "The path to the build specification file"
  type        = string
}

variable "custom_rules" {
  description = "Custom rules for the Amplify application"
  type        = list(object({
    source    = string
    target    = string
    status    = string
    condition = string
  }))
  default = []
}

variable "environment_variables" {
  description = "Environment variables for the Amplify application"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "auto_build" {
  description = "Enable automatic build for the branch"
  type        = bool
  default     = true
}

variable "auto_branch_creation_patterns" {
  description = "Patterns to use for automatic branch creation"
  type        = list(string)
  default     = []
}

variable "basic_auth_credentials" {
  description = "Basic auth credentials for the Amplify application"
  type        = string
  default     = null
}

variable "enable_basic_auth" {
  description = "Enable basic auth for the Amplify application"
  type        = bool
  default     = false
}

variable "route53_zone_id" {
  description = "The Route 53 Zone ID for the domain"
  type        = string
}

variable "domain_name" {
  description = "The domain name for the Amplify application"
  type        = string
}
