terraform {
  backend "gcs" {
    bucket = "carved-rock-prod-state-bucket"
    prefix = "terraform/state"
  }
}
