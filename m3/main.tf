# resource "google_cloud_run_service" "default" {
#   name                       = "tf-moonfire-prod-cloudrun-svc-${random_pet.suffix.id}"
#   location                   = "us-east1"
#   autogenerate_revision_name = true
#   depends_on = [
#     google_project_service.run,
#   ]

#   template {
#     spec {
#       containers {
#         image = "us-docker.pkg.dev/cloudrun/container/hello"
#       }
#     }

#     metadata {
#       annotations = {
#         "run.googleapis.com/client-name" = "terraform"
#       }
#     }
#   }
# }

# resource "random_pet" "suffix" {
#   length = 2
# }

# # If enable API doesn't work fo the following described here:
# # https://cloud.google.com/endpoints/docs/openapi/enable-api
# resource "google_project_service" "run" {
#   project = "tf-moonfire-prod"
#   service = "run.googleapis.com"
# }
