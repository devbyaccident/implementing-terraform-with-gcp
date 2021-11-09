terraform {
  required_providers {
    google = {
      version = "~> 4.0.0"
    }
    google-beta = {
      version = "~> 4.0.0"
    }
  }
}

provider "google" {
  credentials = file("${path.module}/prod-svc-creds.json")
  project     = "carved-rock-prod"
  region      = "us-east1"
  zone        = "us-east1-b"
}

provider "google-beta" {
  project = "carved-rock-dev"
  region  = "us-east1"
  zone    = "us-east1-b"
}
