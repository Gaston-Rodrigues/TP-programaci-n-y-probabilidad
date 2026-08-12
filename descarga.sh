#!/bin/bash

# URL del dataset original
URL="https://raw.githubusercontent.com/Gaston-Rodrigues/TP-Matematica-Aplicada/refs/heads/main/cardio_train.csv"

# Descargar el dataset original
wget -O cardio_train.csv "$URL"

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
' cardio_train.csv > dataset.csv

echo "Dataset procesado correctamente."
echo "Archivo generado: dataset.csv"
