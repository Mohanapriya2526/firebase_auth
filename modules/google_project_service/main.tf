resource "google_project_service" "auth" {
  provider = google_beta
  project           = var.project
  for_each          = toset(var.apis_to_enable)
  service            = each.key
  disable_on_destroy = false
  
}
