#!/bin/bash
apt-get update 
apt-get install -y software-properties-common sudo


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
sudo apt-get install -y cron man

# Installation de l'editeur de texte nano
sudo apt-get install -y nano


# Récupération du dépôt git si inexistant
if ! find / -type d -name "cours_scrypt_linux" 2>/dev/null | grep -q .; then
    git clone https://github.com/flo7716/cours_scrypt_linux/
fi

