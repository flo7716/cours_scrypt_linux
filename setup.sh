#!/bin/bash

# Add Canonical official repositories
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main"
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) restricted"
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) multiverse"

# Vérification mises à jour
sudo apt-get update
sudo apt-get upgrade -y


# Installation des paquets nécessaires
sudo apt-get install -y git curl wget unzip python3 python3-pip python3-venv

# Installation des paquets pour admin réseau et systèmes
sudo apt-get install -y net-tools iproute2
sudo apt-get install -y crontab man

# Installation de l'editeur de texte nano
sudo apt-get install -y nano


# Récupération du dépôt git si inexistant
if [ ! -d "cours_scrypt_linux" ]; then
    git clone https://github.com/flo7716/cours_scrypt_linux/
fi

