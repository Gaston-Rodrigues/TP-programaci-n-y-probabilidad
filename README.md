# Trabajo Práctico Transversal N.º 1 - Análisis del dataset Cardiovascular Disease

## Integrante

- Gastón Rodrigues
- GitHub: Gaston-Rodrigues

## Descripción

Este proyecto corresponde al Trabajo Práctico Transversal N.º 1.

Se utiliza el dataset `cardio_train.csv`, correspondiente a información relacionada con enfermedades cardiovasculares.

El objetivo de esta primera parte es realizar la descarga y limpieza inicial del dataset mediante un script Bash reproducible, obteniendo como resultado el archivo `dataset.csv`, listo para ser utilizado posteriormente en R y RStudio.

## Procesamiento del dataset

El archivo `descarga.sh` realiza las siguientes tareas:

1. Descarga el dataset original desde GitHub.
2. Convierte la edad de días a años.
3. Elimina registros con valores inválidos de presión arterial.
4. Genera el archivo `dataset.csv`.

## Archivos

- `descarga.sh`: script Bash utilizado para descargar y realizar la limpieza inicial del dataset.
- `dataset.csv`: dataset resultante del proceso de limpieza.

## Dataset

El dataset original contiene 70.000 observaciones y 13 variables.

Luego de la limpieza inicial se obtienen 68.666 observaciones y 13 variables.
