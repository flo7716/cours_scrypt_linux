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
sudo ufw allow out 22/tcp
sudo ufw deny in 22/tcp
sudo ufw allow in 443/tcp  # HTTPS
sudo ufw allow in 80/tcp   # HTTP
sudo ufw allow out 465,587/tcp
sudo ufw allow out 53/udp
sudo ufw allow 27017 
sudo ufw allow 3306 
sudo ufw allow 7687


# Desactivation connexion ssh root
echo "[+] Disabling root SSH login..."
sed -i 's/^PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart ssh


# Creation user non-root (si inexistant)
if ! id -u sysadmin >/dev/null 2>&1; then
  echo "[+] Creating non-root user 'sysadmin'..."
  adduser sysadmin
  usermod -aG sudo sysadmin
fi


