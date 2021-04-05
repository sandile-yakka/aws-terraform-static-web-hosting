terraform {
  backend "s3" {
    bucket = "<your tf state backup bucket name>"
    key    = "state/backup.state"
    region = "af-south-1"
  }
}