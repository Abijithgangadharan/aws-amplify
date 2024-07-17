variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "billing_mode" {
  description = "The billing mode for the DynamoDB table"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "hash_key" {
  description = "The name of the hash key"
  type        = string
}

variable "hash_key_type" {
  description = "The type of the hash key (S | N | B)"
  type        = string
  default     = "S"
}

variable "range_key" {
  description = "The name of the range key"
  type        = string
  default     = null
}

variable "range_key_type" {
  description = "The type of the range key (S | N | B)"
  type        = string
  default     = "S"
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
