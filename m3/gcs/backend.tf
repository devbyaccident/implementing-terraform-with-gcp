# Using backend config in CLI will override this block
terraform {
  backend "gcs" {
    bucket = "carved-rock-state-bucket"
    prefix = "m3/gcs_state"
  }
}
