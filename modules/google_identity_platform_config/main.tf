resource "google_identity_platform_config" "auth" {
  provider = google-beta
  project  = var.project

  sign_in {
    allow_duplicate_emails = var.allow_duplicate_emails
    email {
      enabled           = var.email_enabled
      password_required = var.email_password_required
    }
    phone_number {

      enabled = var.phone_number_enabled
      test_phone_numbers = {
        "+11231231234" = "000000"
        # Add more phone numbers and codes as needed
      }
    }
  }
  # depends_on = [ module.project_service ]
}

# resource "google_identity_platform_config" "auth" {
#   provider = google-beta
#   project = var.project

#   sign_in {
#     allow_duplicate_emails = var.allow_duplicate_emails

#     email {
#       enabled             = var.email_enabled
#       password_required   = var.email_password_required
#     }

#     phone_number {
#       enabled              = var.phone_number_enabled
#       test_phone_numbers   = {
#     "+11231231234" = "000000"
#     # Add more phone numbers and codes as needed
#   }
#     }
#   }
# }



# resource "google_identity_platform_config" "auth" {
#   provider = google-beta
#   project = var.project
#     sign_in {
#         allow_duplicate_emails = true

#         # anonymous {
#         #     enabled = true
#         # }

#         email {
#             enabled = true
#             password_required = false
#         }

#         phone_number {
#             enabled = true
#             test_phone_numbers = {
#                 "+11231231234" = "000000"
#             }
#         }
#     }
# }
