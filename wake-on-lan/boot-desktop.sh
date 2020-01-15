#!/bin/bash

# Script to boot Desktop

if [[ -z ${DESKTOP_NET_MASK} ]] || [[ -z ${DESKTOP_MAC} ]] || [[ -z ${DESKTOP_DNS} ]]
then
  echo "Variables DESKTOP_NET_MASK, DESKTOP_MAC and DESKTOP_DNS must be set"
  exit 1
fi

sudo wakeonlan -i $DESKTOP_NET_MASK $DESKTOP_MAC
echo "Waiting 45s for the computer to boot"
sleep 45 
if ping -c 1 $DESKTOP_DNS &> /dev/null
then
  echo "desktop.lan is up"
else
  echo "desktop.lan isn't up"
fi
