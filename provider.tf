provider "google-beta" {
  # credentials = file("./key.json")
  project     = var.project
  region      = var.region
  zone        = var.zone

}
