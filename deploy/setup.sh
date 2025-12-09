# Actualizar los índices de los repositorios
sudo apt-get update
# Instalar herramientas
sudo apt-get install -y git curl ufw docker.io docker-compose
# Crear la estructura de directorios
sudo mkdir -p /opt/webapp/html
# Descargar el archivo docker-compose.yml
curl -o /opt/webapp/docker-compose.yml https://gist.githubusercontent.com/DarkestAbed/0c1cee748bb9e3b22f89efe1933bf125/raw/5801164c0a6e4df7d8ced00122c76895997127a2/docker-compose.yml
# Generar contenido en index.html
echo "<html><body><h1>Servidor Seguro Propiedad de April Fuenzalida - Acceso Restringido</h1></body></html>" | sudo tee /opt/webapp/html/index.html > /dev/null
# Crear usuario sysadmin y añadirlo al grupo docker
sudo useradd -m -s /bin/bash sysadmin
sudo usermod -aG docker sysadmin
