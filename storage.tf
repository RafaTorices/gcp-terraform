# Recurso de bucket de almacenamiento en Cloud Storage
resource "google_storage_bucket" "keep-bonus-bucket" {
  name          = "${var.bucket_name}-${random_string.random.result}" # Nombre del bucket incluyendo un string aleatorio con la función definida anteriormente
  location      = var.location                                        # Zona de ubicación del bucket
  force_destroy = true                                                # Esto permitirá que Terraform elimine el bucket si se elimina el recurso de Terraform
}
