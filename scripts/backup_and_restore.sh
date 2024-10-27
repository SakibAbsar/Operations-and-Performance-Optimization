
#!/bin/bash
# Backup and Restore Script

CONFIG_FILE="config/backup_config.yaml"
SOURCE_DIR=$(grep 'source_dir' $CONFIG_FILE | awk '{print $2}')
BACKUP_DIR=$(grep 'backup_dir' $CONFIG_FILE | awk '{print $2}')

backup() {
    TIMESTAMP=$(date +"%Y%m%d%H%M")
    BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
    tar -czf $BACKUP_FILE $SOURCE_DIR
    echo "Backup created at $BACKUP_FILE"
}

restore() {
    echo "Available backups:"
    ls $BACKUP_DIR
    read -p "Enter the backup file to restore: " BACKUP_FILE
    tar -xzf "$BACKUP_DIR/$BACKUP_FILE" -C /
    echo "Backup $BACKUP_FILE restored."
}

case $1 in
    backup) backup ;;
    restore) restore ;;
    *) echo "Usage: $0 backup|restore" ;;
esac
