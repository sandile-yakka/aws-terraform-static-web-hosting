# aws-terraform-static-web-hosting

## S3-Route53 Static Webhosting Bootstrapper:

This repo helps you achieve the following:
* Create an AWS S3 bucket for static webhosting
* Create an Alias record in your Route53 hosted zone that points to your s3 bucket
* Back up your terraform state file to an S3 bucket of your choice

Notes:
  In order to successfully host a static website with S3 and Route53 remember that your bucket name needs to have the same name as your R53 hosted zone