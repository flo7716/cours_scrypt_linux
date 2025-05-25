#!/bin/bash

## Script de hardening systeme pour Linux (execution en sudo)

# Sortie en cas d'erreur
set -e

echo "Debut du hardening Linux"

# Mise a jour systeme
echo "Mise a jour systeme"
sudo apt-get update && sudo apt-get upgrade -y

# Activation du pare-feu UFW
echo "Activation du pare-feu UFW"
sudo apt install ufw -y


