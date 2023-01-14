
# The 'core-network' name here is optional but might be a good practice 
# to specify the source of this output
data "tfe_outputs" "core-network" {
  organization = "awoisoak-devops"
  workspace    = "terraservice-core-development-network"
}

module "foo" {
  source          = "../../modules/foo"
  region          = var.region
  subnetwork_name = var.subnetwork_name
  cidr            = var.cidr
  network_id      = data.tfe_outputs.core-network.values.vpc.id
}

# Example of creating a second subnet by calling the module twice
module "foo2" {
  source          = "../../modules/foo"
  region          = var.region
  subnetwork_name = "hokkaido-subnet"
  cidr            = "10.0.2.0/24"
  network_id      = data.tfe_outputs.core-network.values.vpc.id
}