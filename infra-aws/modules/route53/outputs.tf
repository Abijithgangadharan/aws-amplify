output "zone_id" {
  description = "The ID of the Route 53 hosted zone"
  value       = aws_route53_zone.primary.zone_id
}

output "record_id" {
  description = "The ID of the Route 53 record"
  value       = aws_route53_record.example.id
}

output "record_name" {
  value = aws_route53_record.example.name
}

output "record_value" {
  value = aws_route53_record.example.records
}


