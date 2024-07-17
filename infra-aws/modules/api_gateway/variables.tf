variable "api_name" {
  description = "The name of the API Gateway"
  type        = string
}

variable "path_part" {
  description = "The path part of the API Gateway resource"
  type        = string
}

variable "region" {
  description = "The AWS region where resources will be created"
  type        = string
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
}
