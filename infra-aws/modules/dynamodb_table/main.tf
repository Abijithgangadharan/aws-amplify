resource "aws_dynamodb_table" "custom_table" {
  name           = var.table_name
  billing_mode   = var.billing_mode
  hash_key       = var.hash_key

  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }

  attribute {
    name = var.range_key
    type = var.range_key_type
  }

  tags = var.tags

  # Optionally include other settings like Global Secondary Indexes, Local Secondary Indexes, etc.
}
