#!/bin/bash

export MESSAGE="/scrypt_exercice/cours_scrypt_linux/message.txt"

# Affichage du contenu du fichier dans la variable MESSAGE
echo "Contenu du fichier :" $MESSAGE
cat $MESSAGE


# Ajout de contenu à la fin du message
echo "Ces cours sont optimisés pour tous les débutants Bachelor et Ingénieur en Linux ! " >> $MESSAGE

# Affichage du contenu mis à jour du fichier
echo "Contenu mis à jour du fichier :" $MESSAGE
cat $MESSAGE

