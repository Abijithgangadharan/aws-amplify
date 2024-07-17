output "zone_id" {
  value = aws_route53_zone.primary.zone_id
}

output "record_name" {
  value = aws_route53_record.example.name
}

output "record_value" {
  value = aws_route53_record.example.records
}
