terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "awoisoak-devops"
    workspaces {
      name = "terraservice-service1-development"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.45.0"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.41.0"
    }
  }
}

provider "google" {
  credentials = var.gcp_credentials
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

provider "tfe" {
  # This should probably a token generated by a Service TFC account in the organization
  # Could be set via TFE_TOKEN env variable too
  #  https://registry.terraform.io/providers/hashicorp/tfe/latest/docs#authentication
  token = var.tfe_token
}