# Fichero con las variables de configuración del proyecto

variable "project_id" {
  description = "ID único del proyecto de GCP"
}

variable "credentials_file" {
  description = "Fichero JSON con las credenciales de la cuenta de servicio en GCP"
}

variable "network_name" {
  description = "Nombre de la red para la Compute Engine"
}

variable "bucket_name" {
  description = "Nombre del bucket de Cloud Storage"
}

variable "location" {
  description = "Zona de ubicación del bucket de Cloud Storage"
}

variable "region" {
  description = "Región de GCP"
}

variable "zone" {
  description = "Zona de GCP"
}

variable "instance_name" {
  description = "Nombre de la instancia de Compute Engine"
}

variable "machine_type" {
  description = "Tipo de máquina virtual"
}

variable "image" {
  description = "Imagen de la máquina virtual"
}

