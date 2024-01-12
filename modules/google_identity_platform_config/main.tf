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