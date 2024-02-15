variable "project" {

}
variable "region" {

}
variable "zone" {

}

variable "allow_duplicate_emails" {
  #   description = "Whether to allow duplicate emails"
  #   default     = true
}

variable "email_enabled" {
  #   description = "Whether email sign-in is enabled"
  #   default     = true
}

variable "email_password_required" {
  #   description = "Whether password is required for email sign-in"
  #   default     = false
}

variable "phone_number_enabled" {
  #   description = "Whether phone number sign-in is enabled"
  #   default     = true
}

# variable "test_phone_numbers" {
#     description = "Map of test phone numbers and their corresponding verification codes"
#     type        = map(string)
#     default     = {}
# }
