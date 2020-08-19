provider "google" {
  credentials = "${file("terraform-account.json")}"
  project     = "aerial-episode-276610"
  region      = "us-central1"

}
