# The 'core' name here is optional but might be a good practice to know where 
# from which state a specific output is coming
data "tfe_outputs" "core" {
  organization = "awoisoak-devops"
  workspace    = "terraservice-core"
}


resource "google_compute_subnetwork" "tokyo_public_subnet_1" {
  name          = "tokyo-public-subnet-1"
  ip_cidr_range = "10.0.1.0/24"
  region        = var.region
  network       = data.tfe_outputs.core.values.tokyo_vpc.id
}

resource "google_compute_subnetwork" "osaka_public_subnet_1" {
  name          = "osaka-public-subnet-1"
  ip_cidr_range = "10.0.1.0/24"
  region        = var.region
  network       = data.tfe_outputs.core.values.osaka_vpc.id
}