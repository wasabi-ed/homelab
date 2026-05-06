#!/bin/bash

#Creates backup directory if it doesn't exist
mkdir -p /home/wasabi/backups

#Creates compressed archive of ~/docker
tar -czf /home/wasabi/backups/backup-$(date +%Y-%m-%d).tar.gz \
--exclude='/home/wasabi/docker/plex/portainer_data' \
--exclude='/home/wasabi/docker/plex/config' \
--exclude='/home/wasabi/docker/homelab/.git' \
~/docker/

#Deletes any backups older than 7 days
find /home/wasabi/backups -name "*.tar.gz" -mtime +7 -delete

echo "Backup complete!"

