provider "google" {
  credentials = file("/root/terraformsample/commoncloud-terraform.json")
  project     = "commoncloud"
  region      = "us-central1"
}
resource "google_compute_instance" "my_vm" {
  project      = "commoncloud"
  zone         = "us-central1-a"
  name         = "vijaysanker-vm1"
  machine_type = "e2-medium"
  boot_disk {
    initialize_params {
      image = "ubuntu-2204-lts-arm64"
    }
  }
  network_interface {
    network    = "my-custom-network-1"
    access_config {}
    subnetwork = "my-custom-subnet-1"
}
