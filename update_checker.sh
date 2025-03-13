#!/bin/bash

export GIT_PATH=$(pwd)

# Vérification mises à jour
sudo apt-get update
sudo apt-get upgrade -y


# Vérification des mises à jour du dépôt git (si le dépôt n'existe pas, il est cloné)
if [ ! -d "$GIT_PATH/.git" ]; then
  echo "Le dépôt Git n'a pas été trouvé dans le répertoire actuel. Clonage du dépôt..."
  git clone https://github.com/flo7716/cours_scrypt_linux/ $GIT_PATH
  cd $GIT_PATH
  echo "Le dépôt Git a été cloné dans le répertoire actuel."

  else
  git pull
  echo "Le dépôt Git a été mis à jour avec succès."
fi