# variable "bucket_name" {
#   description = "The name of the S3 bucket"
#   type        = string
# }

# variable "acl" {
#   description = "The ACL to apply to the S3 bucket"
#   type        = string
#   default     = "private"
# }

# variable "tags" {
#   description = "A map of tags to assign to the resource"
#   type        = map(string)
#   default     = {}
# }

# variable "versioning_enabled" {
#   description = "Enable versioning for the S3 bucket"
#   type        = bool
#   default     = false
# }

# variable "logging_target_bucket" {
#   description = "The target bucket for logging"
#   type        = string
#   default     = ""
# }

# variable "logging_target_prefix" {
#   description = "The target prefix for logging"
#   type        = string
#   default     = ""
# }

# variable "sse_algorithm" {
#   description = "The server-side encryption algorithm to use"
#   type        = string
#   default     = "AES256"
# }

# variable "kms_master_key_id" {
#   description = "The AWS KMS master key ID used for the SSE-KMS encryption"
#   type        = string
#   default     = ""
# }

# variable "bucket_policy" {
#   description = "The bucket policy as a JSON document"
#   type        = string
#   default     = ""
# }

# variable "block_public_acls" {
#   description = "Whether Amazon S3 should block public ACLs for this bucket"
#   type        = bool
#   default     = true
# }

# variable "block_public_policy" {
#   description = "Whether Amazon S3 should block public bucket policies for this bucket"
#   type        = bool
#   default     = true
# }

# variable "ignore_public_acls" {
#   description = "Whether Amazon S3 should ignore public ACLs for this bucket"
#   type        = bool
#   default     = true
# }

# variable "restrict_public_buckets" {
#   description = "Whether Amazon S3 should restrict public bucket policies for this bucket"
#   type        = bool
#   default     = true
# }
