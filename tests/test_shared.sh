#!/bin/bash
FILE="/home/vagrant/shared/test.txt"
if [[ -f "$FILE" ]]; then
    echo "Plik współdzielony istnieje!"
else
    echo "Brak pliku współdzielonego!"
fi
