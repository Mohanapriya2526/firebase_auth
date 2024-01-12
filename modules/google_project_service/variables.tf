variable "apis_to_enable" {
  type = list(string)
  default = ["iam.googleapis.com",
  "cloudresourcemanager.googleapis.com",
   "storage-component.googleapis.com",
   "cloudbuild.googleapis.com",
   "run.googleapis.com"]
}
variable "project" {
  
}