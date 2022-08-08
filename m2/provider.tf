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
  project     = "tf-moonfire-prod"
  region      = "us-east1"
  zone        = "us-east1-b"
}

provider "google-beta" {
  project = "tf-moonfire-dev"
  region  = "us-east1"
  zone    = "us-east1-b"
}
