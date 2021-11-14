terraform {
<<<<<<< HEAD
=======
  # ... other configuration ...
>>>>>>> 866340354da49ef18ddc6f73ba38080f51c452a1
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
<<<<<<< HEAD
  credentials = file("${path.module}/prod-svc-creds.json")
  project     = "carved-rock-prod"
  region      = "us-east1"
  zone        = "us-east1-b"
}

provider "google-beta" {
  project = "carved-rock-dev"
  region  = "us-east1"
  zone    = "us-east1-b"
=======
  project = var.project
  region  = "us-east1"
  zone    = "us-east1-a"
}

provider "google-beta" {
  project = var.project
  region  = "us-east1"
  zone    = "us-east1-a"
>>>>>>> 866340354da49ef18ddc6f73ba38080f51c452a1
}
