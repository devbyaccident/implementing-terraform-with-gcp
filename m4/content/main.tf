# Data source looking up the bucket from m4/bucket
data "google_storage_bucket" "site_bucket" {
  name = "www.carvedrockfitness.biz"
}

resource "google_storage_bucket_object" "static_content" {
  for_each = fileset("static-site/", "**")
  # Reference that bucket's name here
  bucket = data.google_storage_bucket.site_bucket.name
  name   = each.value
  source = "static-site/${each.value}"
  metadata = {
    "Cache-Control" = "no-store"
  }
}
