# Configuramos el proveedor de Google Cloud Platform
provider "google" {
  # Indicamos el archivo JSON de la cuenta de servicio
  credentials = file("credentials.json")
  # Indicamos el proyecto y la región
  project = "gcp-rafaeltorices"
  region  = "europe-west1"
}

# RECURSOS

# Recurso de red virtual (VPC)
resource "google_compute_network" "keep-bonus-vpc" {
  name = "keep-bonus-vpc"
}

# Recurso de bucket de almacenamiento en Cloud Storage
resource "google_storage_bucket" "keep-bonus-bucket" {
  name          = "keep-bonus-bucket" # Nombre del bucket
  location      = "europe-west1"      # Zona de ubicación del bucket
  force_destroy = true                # Esto permitirá que Terraform elimine el bucket si se elimina el recurso de Terraform
}

# Instancia de Compute Engine
resource "google_compute_instance" "keep_bonus" {
  # Nombre de la instancia
  name = "keep-bonus"
  # Tipo de máquina
  machine_type = "n1-standard-1"
  # Zona de la instancia
  zone = "europe-west1-b"
  # Disco de arranque
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  # Configuración de red
  network_interface {
    network = "keep-bonus-vpc"
    access_config {
      // Elegir una dirección IP ephemeral o asignar una dirección IP estática aquí
    }
  }
}

