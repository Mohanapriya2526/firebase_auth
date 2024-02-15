module "project_service" {
  source  = "./modules/google_project_service"
  project = var.project
}
module "platform_config" {
  source                  = "./modules/google_identity_platform_config"
  project                 = var.project
  allow_duplicate_emails  = var.allow_duplicate_emails
  email_enabled           = var.email_enabled
  email_password_required = var.email_password_required
  phone_number_enabled    = var.phone_number_enabled
}


