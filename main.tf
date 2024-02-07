# module "firebase_signin" {
#   source = "./modules/google_identity_platform_config"
#   project = var.project
   
# }
resource "google_identity_platform_config" "auth" {
   provider = google-beta
   project  = var.project
  # project = module.firebase_signin.auth_project
}

# output "auth" {
#   description = "The ID of the created Identity Platform configuration."
#   value       = google_identity_platform_config.auth
# }

# import {
#   id = "projects/{{edblack}}/config"
#   to = google_identity_platform_config.auth
# }


module "project_service" {
  source  = "./modules/google_project_service"
  project = var.project
}