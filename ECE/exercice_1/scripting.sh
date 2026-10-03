#!/bin/bash

# se placer dans le répertoire courant
WORKDIR=/home/$USER/documents/backup
cd $WORKDIR

# Créer un script bash qui crée 3 fichiers (1 fichier texte, 1 fichier CSV et 1 fichier JSON) dans le répertoire courant. (ces fichiers sont vides au départ). Ensuite, le script doit afficher le nom de chaque fichier créé ainsi que son type (texte, CSV ou JSON).
# 3 méthodes possibles pour le parcours et le type des fichiers : 
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

for file in fichier1.txt fichier2.csv fichier3.json; do
    echo "Nom du fichier: $file"
    case $file in
        *.txt)
            echo "Type: texte"
            ;;
        *.csv)
            echo "Type: CSV"
            ;;
        *.json)
            echo "Type: JSON"
            ;;
    esac
done

for file in $(ls $WORKDIR); do
    echo "Nom du fichier: $file"
    if [[ $file == *.txt ]]; then
        echo "Type: texte"
    elif [[ $file == *.csv ]]; then
        echo "Type: CSV"
    elif [[ $file == *.json ]]; then
        echo "Type: JSON"
    fi
done