#!/bin/bash

# Vérification mises à jour
sudo apt-get update
sudo apt-get upgrade -y


# Installation des paquets nécessaires
sudo apt-get install -y git curl wget unzip python3 python3-pip

# Installation des paquets pour admin réseau et systèmes
sudo apt-get install -y net-tools iproute2
sudo apt-get install -y cron man

# Installation de l'editeur de texte nano
sudo apt-get install -y nano


# Récupération du dépôt git si inexistant
if ! find / -type d -name "cours_scrypt_linux" 2>/dev/null | grep -q .; then
    git clone https://github.com/flo7716/cours_scrypt_linux/
fi

### EXEMPLE DE SCRIPT D'INSTALLATION A AJOUTER POUR CREER UN ENVIRONNEMENT PYTHON DESTINE AU MACHINE LEARNING ###

# Installation d'Anaconda (environnement virtuel Python)
curl -O https://repo.anaconda.com/archive/Anaconda3-2024.10-1-Linux-x86_64.sh
bash ~/Anaconda3-2024.10-1-Linux-x86_64.sh

# Création d'un environnement Anaconda
conda create --name env_scrypt python=3.8
conda activate env_scrypt




