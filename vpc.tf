# Recurso de red virtual (VPC)
resource "google_compute_network" "keep-bonus-vpc" {
  name = var.network_name
}
