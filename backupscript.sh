#!/bin/bash

DATE=$(date +%Y%m%d) #ambil var tanggal
BACKUP_DIR="/backup" #tentukan lokasi untuk backup
SOURCE_DIR="/etc" #file/folder yang ingin dibackup
FILENAME="etc_${DATE}.tar.gz" #memberikan nama untuk file backup

mkdir -p "$BACKUP_DIR" #membuat directory backup

tar -czf "$BACKUP_DIR/$FILENAME" "$SOURCE_DIR" # membuat bakcup

echo "Backup selesai: $BACKUP_DIR/$FILENAME" #output log jika sudah selesai
