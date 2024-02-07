output "auth" {
  description = "The ID of the created Identity Platform configuration."
  value       = google_identity_platform_config.auth
}

output "auth_project" {
  description = "The project associated with the Identity Platform configuration."
  value       = var.project
}

# # Add any other output variables you need
