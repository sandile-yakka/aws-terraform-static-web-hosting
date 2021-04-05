terraform {
  backend "s3" {
    bucket = "gold-butterfly-tf-state"
    key    = "state/backup.state"
    region = "af-south-1"
  }
}