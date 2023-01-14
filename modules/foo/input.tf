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

variable "network_id" {
  type        = string
  description = "Network ID which this subnetwork belongs to"
}