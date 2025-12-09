# Variables
TIMESTAMP=$(date +"%Y-%m-%d_%H%M")
BACKUP_DIR="/var/backups/webapp"
SOURCE_DIR="/opt/webapp/html"
BACKUP_FILE="backup_web_$TIMESTAMP.tar.gz"
# Crear el directorio de backup si no existe
sudo mkdir -p $BACKUP_DIR
# Empaquetar y comprimir el directorio
sudo tar -czf $BACKUP_DIR/$BACKUP_FILE -C $SOURCE_DIR
# Sincronización local
rsync -avz $BACKUP_DIR/$BACKUP_FILE /var/backups/webapp
# Captura de códigos de salida
if [ $? -eq 0 ]; then
    echo "Backup y sincronización completados con éxito."
else
    echo "Error durante el proceso de backup."
fi
