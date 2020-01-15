#!/bin/bash

cd /home/axel/Images/Photos/Reflex

for dir in ./*
do
  echo "Backuping RAWs in $dir"
  # Backup to remote folder excluding darktable-exported
  # rm -r $dir/*.ARW $dir/*.CR2
done;
