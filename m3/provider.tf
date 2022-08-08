terraform {
  required_providers {
    google = {
      version = "~> 4.0.0"
    }
  }
}

provider "google" {
  project = "tf-moonfire-prod"
  region  = "us-east1"
  zone    = "us-east1-b"
}
