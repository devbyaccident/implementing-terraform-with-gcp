locals {
  dns_name = "www.${data.google_dns_managed_zone.carved_rock_dns_zone.dns_name}"
}

# This is a data source for an existing DNS Zone
# DNS Zone created when purchasing a domain
data "google_dns_managed_zone" "carved_rock_dns_zone" {
  name = "carved-rock-fitness-prod"
}

resource "google_storage_bucket" "website" {
  project       = var.project
  name          = trimsuffix(local.dns_name, ".")
  location      = "US"
  force_destroy = true

  website {
    main_page_suffix = "index.html"
  }

  cors {
    origin = ["*"]
    method = ["*"]
  }

}

resource "google_storage_default_object_acl" "website_acl" {
  bucket      = google_storage_bucket.website.name
  role_entity = ["READER:allUsers"]
}

resource "google_dns_record_set" "cname" {
  project = var.project
  name    = local.dns_name
  # Referencing a different property from the data source one more time here
  managed_zone = data.google_dns_managed_zone.carved_rock_dns_zone.name
  type         = "CNAME"
  ttl          = 60
  rrdatas      = ["c.storage.googleapis.com."]
  depends_on   = [google_storage_bucket.website]
}
