# Análisis exploratorio de enfermedades cardiovasculares

## Integrante

- Gastón Rodrigues (GitHub: Gaston-Rodrigues)

## Resumen

Este proyecto analiza un dataset de 70.000 registros sobre enfermedades cardiovasculares. Un script Bash descarga y limpia los datos, y un reporte en Quarto con R y `tidyverse` realiza el análisis exploratorio.

La limpieza convierte la edad de días a años y elimina registros con valores inválidos de presión arterial. El resultado es un dataset de 68.666 observaciones y 13 variables.

## Estructura del proyecto

```text
.
├── datos/
│   ├── crudos/          # Dataset original
│   └── procesados/      # Dataset limpio
├── scripts/
│   └── descarga.sh      # Descarga y limpieza
├── reportes/
│   ├── EDA_cardio.qmd   # Código del reporte
│   └── EDA_cardio.pdf   # Reporte generado
├── dashboard/
│   ├── index.qmd        # Dashboard
│   └── styles.css       # Ajustes visuales
├── entregas/            # Evidencias de entregas
└── README.md
```

## Requisitos

- Git y Bash (en Windows, Git Bash)
- R y RStudio
- Quarto, incluido en versiones recientes de RStudio
- Paquete de R `tidyverse`
- Una distribución de LaTeX para generar el PDF

## Cómo reproducir el proyecto

Seguir estos pasos en orden:

1. Clonar el repositorio:

   ```bash
   git clone https://github.com/Gaston-Rodrigues/TP-programaci-n-y-probabilidad.git
   cd TP-programaci-n-y-probabilidad
   ```

2. Descargar y limpiar los datos desde la raíz del proyecto:

   ```bash
   bash scripts/descarga.sh
   ```

   Este paso genera `datos/crudos/cardio_train.csv` y `datos/procesados/dataset.csv`.

3. Abrir `TP-programaci-n-y-probabilidad.Rproj` en RStudio.

4. Abrir `reportes/EDA_cardio.qmd` y hacer clic en **Render**.

   Este paso genera `reportes/EDA_cardio.pdf`.

5. Abrir `dashboard/index.qmd` y hacer clic en **Render**.

   Este paso genera el dashboard en `dashboard/_site/`.

## Paquetes del dashboard

```r
install.packages(c("tidyverse", "plotly", "DT"))
```

## Dashboard publicado

https://gaston-rodrigues.github.io/TP-programaci-n-y-probabilidad/
