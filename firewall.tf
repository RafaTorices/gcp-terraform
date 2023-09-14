# Crear una regla de firewall que permita SSH (puerto 22) y puerto 80
resource "google_compute_firewall" "allow-ssh" {
  name    = "keep-bonus-allow-ssh-80"
  network = google_compute_network.keep-bonus-vpc.name
  # Puertos permitidos
  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }
  source_ranges = ["0.0.0.0/0"] # Permite tráfico desde cualquier IP
}
