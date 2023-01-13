variable "project_id" {
}

variable "region" {
}

variable "zone" {
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