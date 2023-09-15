# Instancia de Compute Engine
resource "google_compute_instance" "keep-bonus-vm" {
  # Dependencias que debe tener la instancia
  depends_on = [
    google_compute_network.keep-bonus-vpc
  ]
  # Nombre de la instancia
  name = var.vm_name
  # Tipo de máquina
  machine_type = var.machine_type
  # Disco de arranque
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  # Configuración de red
  network_interface {
    network = google_compute_network.keep-bonus-vpc.name
    access_config {
      # Esto asignará una dirección IP externa a la instancia
    }
  }
  # Lanzamos un script en el inicio de la máquina usando los metada
  metadata = {
    startup-script = <<-EOF
      #!/bin/bash
      apt update
      apt install -y apache2
    EOF
  }
}
