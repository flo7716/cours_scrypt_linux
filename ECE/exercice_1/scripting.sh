#!/bin/bash

# se placer dans le répertoire courant

# Créer un script bash qui crée 3 fichiers (1 fichier texte, 1 fichier CSV et 1 fichier JSON) dans le répertoire courant. (ces fichiers sont vides au départ). Ensuite, le script doit afficher le nom de chaque fichier créé ainsi que son type (texte, CSV ou JSON).
touch fichier1.txt fichier2.csv fichier3.json

for file in fichier1.txt fichier2.csv fichier3.json; do
    echo "Nom du fichier: $file"
    if [[ $file == *.txt ]]; then
        echo "Type: texte"
    elif [[ $file == *.csv ]]; then
        echo "Type: CSV"
    elif [[ $file == *.json ]]; then
        echo "Type: JSON"
    fi
done