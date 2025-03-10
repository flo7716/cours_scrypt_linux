#!/bin/bash


echo "Choisissez votre distribution Linux : "
echo "1. Debian"
echo "2. Ubuntu"
echo "3. Fedora"
echo "4. Arch Linux"
echo "5. OpenSUSE"
echo "6. Kali Linux"

## Réponse en fonction du cas choisi par l'utilisateur
read -p "Entrez un numéro correspondant à votre choix : " choice

case $choice in
    1)
        echo "Bienvenue chez les anciens de Debian !"
        ;;
    
    2) 
        echo "Bienvenue chez les fans d'Ubuntu !"
        ;;
    3)
        echo "Bienvenue chez les apprentis utilisateurs Red Hat avec Fedora !"
        ;;
    4)
        echo "Bienvenue à l'asile psychiatrique des utilisateurs d'Arch MOUAHAHAHAHAHA !!!!!!"
        ;;
    5)
        echo "Herzlich Willkommen bei OpenSUSE !"
        ;;
    6)
        echo "Apprenti hacker, je te souhaite la bienvenue sur Kali Linux !"
        ;;
    *) 
        echo "Choix invalide. Relance le script et tape un numéro entre 1 et 6 !"
        ;;
esac