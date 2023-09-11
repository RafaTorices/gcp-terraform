# Inicializamos las librerías de Terraform para Google Cloud Platform
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.81.0"
    }
  }
}

# Configuramos el proveedor de Google Cloud Platform
provider "google" {
  # Indicamos el archivo JSON de la cuenta de servicio
  credentials = file(var.credentials_file)
  # Indicamos el proyecto y la región y la zona
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# RECURSOS

resource "random_string" "random" {
  length  = 5
  special = false
  upper   = false
}

# Recurso de red virtual (VPC)
resource "google_compute_network" "keep-bonus-vpc" {
  name = var.network_name
}

# Recurso de bucket de almacenamiento en Cloud Storage
resource "google_storage_bucket" "keep-bonus-bucket" {
  name          = "${var.bucket_name}-${random_string.random.result}" # Nombre del bucket incluyendo un string aleatorio con la función definida anteriormente
  location      = var.location                                        # Zona de ubicación del bucket
  force_destroy = true                                                # Esto permitirá que Terraform elimine el bucket si se elimina el recurso de Terraform
}

# Instancia de Compute Engine
resource "google_compute_instance" "keep-bonus-vm" {
  # Dependencias que debe tener la instancia
  depends_on = [
    google_compute_network.keep-bonus-vpc
  ]
  # Nombre de la instancia
  name = var.instance_name
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
  }
}

