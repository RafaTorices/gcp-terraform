# Script de Terraform para desplegar recursos en GCP

## Autor: Rafael Torices

## Descripción

Este script despliega una infraestructura en GCP con Terraform. La infraestructura consiste en una red virtual VPC, un bucket de almacenamiento en Google Cloud Storage y una instancia de Compute Engine que haga uso de esa red virtual.

## Requisitos

Para poder ejecutar este script es necesario tener instalado Terraform y tener una cuenta de GCP con un proyecto creado. Además, es necesario tener instalado el SDK de Google Cloud y haber iniciado sesión con el comando `gcloud auth login`.

## Ejecución

Para ejecutar el script, es necesario tener un archivo de credenciales de servicio de GCP. Este archivo se puede descargar desde la consola de GCP en la sección IAM y administración > Cuentas de servicio. Una vez descargado, se debe guardar en la carpeta del script con el nombre `credentials.json`.

Para ejecutar el script, se debe ejecutar el comando `terraform init` en la carpeta del script para inicializar Terraform. Después, se debe ejecutar el comando `terraform apply` para desplegar la infraestructura. Terraform pedirá confirmación para desplegar los recursos.

## Destrucción

Para destruir la infraestructura desplegada, se debe ejecutar el comando `terraform destroy` en la carpeta del script. Terraform pedirá confirmación para destruir los recursos.
