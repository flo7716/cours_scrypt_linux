sudo ufw default allow outgoing
sudo ufw allow out 22/tcp
sudo ufw deny in 22/tcp
sudo ufw allow in 443/tcp  # HTTPS
sudo ufw allow in 80/tcp   # HTTP
sudo ufw allow out 465,587/tcp
sudo ufw allow out 53/udp
sudo ufw allow 27017
sudo ufw allow 3306
sudo ufw allow 7687
sudo ufw enable
sudo ufw status
