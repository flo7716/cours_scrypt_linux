#!/bin/bash

## Exportation de la variable MESSAGE (chemin du fichier message.txt sur le répertoire courant)

export MESSAGE=$(pwd)/message.txt

# Affichage du contenu du fichier dans la variable MESSAGE
echo "Contenu du fichier :" $MESSAGE
cat $MESSAGE


# Ajout de contenu à la fin du message
echo "Ces cours sont optimises pour tous les debutants Bachelor et Ingenieur en Linux ! " >> $MESSAGE

# Affichage du contenu mis à jour du fichier
echo "Contenu mis a jour du fichier :" $MESSAGE
cat $MESSAGE

