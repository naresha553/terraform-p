provider "google" {
  version = "3.5.0"
  credentials = file("/downloads/instance.json")
  project = "using-terraf-156-c0f35210"
  region = "us-central1"
  zone = "us-central1-c"

}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
  
}

resource "google_compute_subnetwork" "public_subnetwork" {
  name = "terraform-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region = "us-central1"
  network = google_compute_network.vpc_network.name   
}