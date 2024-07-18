variable "log_group_name" {
  description = "The name of the CloudWatch log group"
  type        = string
}

variable "retention_in_days" {
  description = "The number of days to retain logs"
  type        = number
  default     = 7
}
