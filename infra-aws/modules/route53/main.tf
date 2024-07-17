resource "aws_route53_zone" "primary" {
  name = var.domain_name
  tags = var.tags
}

resource "aws_route53_record" "example" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = var.record_name
  type    = "CNAME"
  ttl     = "300"
  records = [var.record_value]
}
