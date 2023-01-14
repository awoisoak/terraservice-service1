resource "google_compute_subnetwork" "fujisawa_public_subnet_1" {
  region        = var.region
  name          = var.subnetwork_name
  ip_cidr_range = var.cidr
  network       = var.network_id
}