# Script Terraform crear MySQL en SQL Cloud de Google Cloud Platform

# Definimos el nombre de la instancia de MySQL
resource "google_sql_database_instance" "mysql" {
  # Dependencias que debe tener la instancia
  depends_on = [
    google_compute_network.keep-bonus-vpc
  ]
  name             = var.mysql_name
  database_version = var.mysql_version
  region           = var.region
  settings {
    tier              = var.mysql_tier
    activation_policy = "ALWAYS"
    # Configuramos el almacenamiento
    disk_autoresize = var.mysql_autoresize
    disk_size       = var.mysql_size
    # Configuramos el backup automático
    backup_configuration {
      enabled    = var.mysql_backup_enabled
      start_time = var.mysql_backup_start_time
    }
    # Configuramos la red VPC del proyecto
    ip_configuration {
      ipv4_enabled    = "false"
      private_network = google_compute_network.keep-bonus-vpc.id
    }
  }
  deletion_protection = "false"
}

# Bases de datos dentro de la instancia
resource "google_sql_database" "db1" {
  name     = var.mysql_database1
  instance = google_sql_database_instance.mysql.name
}

# Bases de datos dentro de la instancia
resource "google_sql_database" "db2" {
  name     = var.mysql_database2
  instance = google_sql_database_instance.mysql.name
}

# Definimos un usuario
resource "google_sql_user" "user" {
  name     = var.mysql_user
  instance = google_sql_database_instance.mysql.name
  host     = "%"
  password = var.mysql_password
}

