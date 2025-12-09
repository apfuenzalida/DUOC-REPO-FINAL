# Habilitar ufw y establecer política por defecto
sudo ufw default deny incoming
sudo ufw allow 22/tcp
sudo ufw allow 8080/tcp
sudo ufw enable
# Deshabilitar acceso directo del superusuario en SSH
sudo sed -i 's/^PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart sshd
# Aplicar permisos restringidos
sudo chmod 600 /opt/webapp/docker-compose.yml
sudo chmod 700 /opt/webapp/html
