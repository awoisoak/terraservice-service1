
# The 'core-network' name here is optional but might be a good practice 
# to specify the source of this output
data "tfe_outputs" "core-network" {
  organization = "awoisoak-devops"
  workspace    = "terraservice-core-development-network"
}

module "foo" {
  source          = "../../modules/main"
  region          = var.region
  subnetwork_name = var.subnetwork_name
  cidr            = var.cidr
  network_id      = data.tfe_outputs.core-network.values.vpc.id
}
