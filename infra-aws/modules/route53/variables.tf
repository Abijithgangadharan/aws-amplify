variable "domain_name" {
  description = "The domain name for the Route 53 hosted zone"
  type        = string
}

variable "record_name" {
  description = "The name of the Route 53 record"
  type        = string
}

variable "record_value" {
  description = "The value of the Route 53 record"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the resources"
  type        = map(string)
  default     = {}
}
