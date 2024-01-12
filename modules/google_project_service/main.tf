resource "google_project_service" "auth" {
  project           = var.project
  for_each          = toset(var.apis_to_enable)
  service            = each.key
  disable_on_destroy = false
  
}
