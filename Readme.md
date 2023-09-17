# Script de Terraform para desplegar recursos en GCP

## Autor: Rafael Torices

## Descripción

Este script despliega una infraestructura en GCP con Terraform. La infraestructura consiste en una red virtual VPC, un bucket de almacenamiento en Google Cloud Storage, una instancia de Compute Engine que haga uso de esa red virtual que ejecuta un servidor web apache, una instancia de Cloud SQL con dos bases de datos y un usuario de MySQL y se han creado las reglas de firewall necesarias para acceder a la instancia de Compute Engine mediante SSH y acceso al puerto 80 para apache.

## Requisitos

Para poder ejecutar este script es necesario tener instalado Terraform y tener una cuenta de GCP con un proyecto creado y una cuenta de servicio asignada a ese proyecto con acceso al mismo. Además, es necesario tener instalado el SDK de Google Cloud y haber iniciado sesión con el comando `gcloud auth login`.

## Ejecución

Para ejecutar el script, es necesario tener un archivo de credenciales de servicio de GCP. Este archivo se puede descargar desde la consola de GCP en la sección IAM y administración > Cuentas de servicio. Una vez descargado, se debe guardar en la carpeta del script con el nombre `credentials.json`.

Para ejecutar el script, se debe ejecutar el comando `terraform init` en la carpeta del script para inicializar Terraform. Después, se debe ejecutar el comando `terraform apply -var-file="gcp.tfvars` para desplegar la infraestructura. Terraform pedirá confirmación para desplegar los recursos.

>**_INFORMACIÓN_**<br>
El fichero `gcp.tfvars` contiene las variables necesarias para desplegar la infraestructura. Como en este caso es a modo de práctica, se ha incluído en el repositorio. En un caso real, este fichero no se debería incluir en el repositorio, ya que puede contener información sensible.

## Destrucción

Para destruir la infraestructura desplegada, se debe ejecutar el comando `terraform destroy -var-file="gcp.tfvars` en la carpeta del script. Terraform pedirá confirmación para destruir los recursos.
