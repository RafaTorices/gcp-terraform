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

variable "vm_name" {
  description = "Nombre de la instancia de Compute Engine"
}

variable "machine_type" {
  description = "Tipo de máquina virtual"
}

variable "image" {
  description = "Imagen de la máquina virtual"
}

variable "mysql_name" {
  description = "Nombre de la instancia de MySQL"
}

variable "mysql_version" {
  description = "Versión de la instancia de MySQL"
}

variable "mysql_tier" {
  description = "Tier de la instancia de MySQL"
}

variable "mysql_autoresize" {
  description = "Almacenamiento SSD"
}

variable "mysql_size" {
  description = "Tamaño del almacenamiento SSD"
}

variable "mysql_backup_enabled" {
  description = "Backup automático"
}

variable "mysql_backup_start_time" {
  description = "Hora de inicio del backup automático"
}

variable "mysql_ipv4_enabled" {
  description = "Tipo de conexión"
}

variable "mysql_private_network" {
  description = "Red privada"
}

variable "mysql_user" {
  description = "Usuario de MySQL"
}

variable "mysql_password" {
  description = "Contraseña de MySQL"
}

variable "mysql_database1" {
  description = "Nombre de la base de datos de MySQL"
}

variable "mysql_database2" {
  description = "Nombre de la base de datos de MySQL"
}
