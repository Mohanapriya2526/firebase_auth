module "google_signin" {
  source = "./modules/google_identity_platform_config"
  project = var.project
  depends_on = [ module.project_service ]
}
 resource "google_identity_platform_config" "auth" {
    project  = var.project
 #  project = module.firebase_signin.auth_project
    depends_on = [ module.google_signin ]
}
import {
  id = "projects/{{edblack}}/config"
  to = google_identity_platform_config.auth
}

module "project_service" {
  source  = "./modules/google_project_service"
  project = var.project
}