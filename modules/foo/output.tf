
output "subnetwork" {
  sensitive   = true
  description = "Subnetwork object"
  value       = google_compute_subnetwork.fujisawa_public_subnet_1
}