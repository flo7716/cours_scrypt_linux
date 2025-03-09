#!/bin/bash


# Vérification mises à jour
sudo apt-get update
sudo apt-get upgrade -y


# Installation des paquets nécessaires
sudo apt-get install -y git curl wget unzip python3 python3-pip python3-venv


# Récupération du dépôt git
git clone https://github.com/flo7716/cours_scrypt_linux/