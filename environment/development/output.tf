
output "fujisawa" {
  sensitive = true
  value     = module.foo.subnetwork
}

output "hokkaido" {
  sensitive = true
  value     = module.foo2.subnetwork
}