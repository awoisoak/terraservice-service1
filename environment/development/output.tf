
output "tokyo" {
  sensitive   = true
  description = "data retrieved from core remote state via tfe_outputs"
  value       = data.tfe_outputs.core.values.tokyo_vpc
}


output "osaka" {
  sensitive   = true
  description = "data retrieved from core remote state via tfe_outputs"
  value       = data.tfe_outputs.core.values.osaka_vpc
}