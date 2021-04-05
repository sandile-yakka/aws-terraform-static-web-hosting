resource "aws_s3_bucket" "deployment_bucket" {
    bucket = var.deployment_bucket_name
    acl    = "public-read"
    website {
        index_document = "index.html"
        error_document = "index.html"
    }
    cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = var.allowed_origins
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }
}

resource "aws_route53_record" "www" {
  zone_id = var.hosted_zone_id
  name    = var.deployment_bucket_name
  type    = "A"

  alias {
    name                   = aws_s3_bucket.deployment_bucket.website_endpoint
    zone_id                = aws_s3_bucket.deployment_bucket.hosted_zone_id
    evaluate_target_health = false
  }
}
