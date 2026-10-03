#!/bin/bash

## Script pour manipulation de l'arborescence de fichiers

USER=$(whoami)
# se placer dans /home/votre_user/documents
WORKDIR=/home/$USER/documents
cd $WORKDIR
#créer un répertoire tp_linux et un sous-dossier backup
mkdir -p tp_linux/backup

# se placer dans tp_linux et écrire un fichier config.txt avec la chaine "port=8080"
cd tp_linux
echo "port=8080" > config.txt

# copier config.txt dans le sous-dossier backup sous le nom config.bak, vérifier ses droits et ne le rendre lisible que par l'utilisateur
cp config.txt $WORKDIR/tp_linux/backup/config.bak
ls -l $WORKDIR/tp_linux/backup/config.bak
chmod 600 $WORKDIR/tp_linux/backup/config.bak