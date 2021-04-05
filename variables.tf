variable "deployment_bucket_name" {
  description = "Describes the bucket to which the app will be deployed"
}

variable "hosted_zone_id" {
  description = "Describes the Route53 hosted zone to use"
}

variable "allowed_origins" {
  description = "a list of origins that are allowed to access your static site hosted on s3"
}