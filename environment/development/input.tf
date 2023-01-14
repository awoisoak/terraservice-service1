variable "project_id" {
  type        = string
  description = "Project Id "
}

variable "zone" {
  type        = string
  description = "Zone"
}

variable "region" {
  type        = string
  description = "Region"
}

variable "subnetwork_name" {
  type        = string
  description = "SubNetwork Name"
}

variable "cidr" {
  type        = string
  description = "IP CIDR Range of the network"
}

variable "gcp_credentials" {
  type        = string
  sensitive   = true
  description = "Google Cloud service account credentials"
}

variable "tfe_token" {
  type        = string
  sensitive   = true
  description = "Token to be used by TFE provider"
}