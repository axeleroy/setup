#!/bin/bash

# Text formating
bold=$(tput bold)
normal=$(tput sgr0)
info=$(tput setaf 2)
warn=$(tput setaf 3)
error=$(tput setaf 1)

usage() {
  echo "sync [-h] [--from dir] [--to dir] [--no-snap] [--delete]"
}

help() {
  echo -e "${bold}A command that synchronize folders depending on context.${normal}"
  echo "(or a fancy wrapper for rsync that also creates SnapRAID snapshots after sync)"

  echo ""
  usage
  echo ""
  
  echo -e "${bold}-h${normal}"
  echo -e "    Displays this help."
  
  echo -e "${bold}--from${normal} path/to/dir"
  echo -e "    The folder to sync. Default is the current dir."
  
  echo -e "${bold}--to${normal} path/to/dir"
  echo -e "    The folder to sync to. Default is relative to ${bold}\$DEFAULT_SYNC_HOME${normal}."
  echo -e "    For example, if the folder you are syncing from is ${bold}~/my/sweet/folder${normal}, it will sync to \$DEFAULT_SYNC_HOME${bold}/my/sweet/folder${normal}"
  
  echo -e "${bold}--no-snap${normal}"
  echo -e "    Disables the creation of a SnapRAID snapshot after sync."
  
  echo -e "${bold}--delete${normal}"
  echo -e "    Deletes files in the destination folder if they have been deleted from the source."
}

help
