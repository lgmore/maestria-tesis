#!/bin/bash
#find . -type f -name 'FUN*' -exec cat {} + >> objetivos.txt
#find . -type f -name 'VAR*' -exec cat {} + >> vardecision.txt
#paste -d " " vardecision.txt objetivos.txt > resultados.txt
contador=0
find . -type f -name 'FUN*' | while read line; do
    echo "Processing file '$line'"
    cp $line ./resultado$contador.csv
    contador=$[$contador+1]

done
