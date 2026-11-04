#!/bin/bash
set -e

# Ir a la raíz del proyecto, sin importar desde dónde se ejecute el script
cd "$(dirname "$0")/.."

# URL del dataset original
URL="https://raw.githubusercontent.com/Gaston-Rodrigues/TP-Matematica-Aplicada/refs/heads/main/cardio_train.csv"

# Rutas relativas a la raíz del proyecto
CRUDO="datos/crudos/cardio_train.csv"
PROCESADO="datos/procesados/dataset.csv"

# Crear las carpetas si no existen
mkdir -p datos/crudos datos/procesados

# Descargar el dataset original
curl -fL -o "$CRUDO" "$URL"

# Limpiar y transformar el dataset
awk -F';' '
BEGIN {
    OFS=";"
}

NR == 1 {
    print
    next
}

{
    age = $2 / 365
    ap_hi = $6
    ap_lo = $7

    if (ap_hi > ap_lo && ap_hi >= 70 && ap_hi <= 250 && ap_lo >= 40 && ap_lo <= 150) {
        $2 = age
        print
    }
}
' "$CRUDO" > "$PROCESADO"

echo "Dataset procesado correctamente."
echo "Archivo generado: $PROCESADO"
