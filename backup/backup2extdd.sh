#!/bin/bash

backup_folder="/media/axel/Backup/"

if [ ! -d "$backup_folder" ]
then
	echo "$backup_folder is not mounted or does not exist!"
else
	rsync -auvh --exclude '.cache' --exclude '.npm' --exclude '.npm_modules' \
	  --exclude '.local/share/Steam' ~ "$backup_folder"
fi
