
output "fujisawa" {
  sensitive   = true
  description = "data retrieved from core remote state via tfe_outputs"
  value       = module.foo.subnetwork
}