# module "firebase_signin" {
#   source = "./modules/google_identity_platform_config"
#   project = var.project
   
# }
# resource "google_identity_platform_config" "auth" {
#    provider = google-beta
#    project  = var.project
#   # project = module.firebase_signin.auth_project
# }

# output "auth" {
#   description = "The ID of the created Identity Platform configuration."
#   value       = google_identity_platform_config.auth
# }

# import {
#   id = "projects/{{edblack}}/config"
#   to = google_identity_platform_config.auth
# }
resource "google_identity_platform_config" "auth" {
  # provider = google_beta
  project = var.project
    sign_in {
        allow_duplicate_emails = true

        # anonymous {
        #     enabled = true
        # }

        email {
            enabled = true
            password_required = false
        }

        phone_number {
            enabled = true
            test_phone_numbers = {
                "+11231231234" = "000000"
            }
        }
    }
}

module "project_service" {
  source  = "./modules/google_project_service"
  project = var.project
}