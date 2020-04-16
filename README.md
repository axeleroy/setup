# Axel Leroy's shell scripts

## Folder structure
* [backup](backup/): backup scripts. WIP.
* [messaging](messaging/)
* [setup](setup/): scripts to install needed software on my various computers.
* [shell-extensions-management](shell-extensions-management/)
    * [extension-management.py](shell-extensions-management/extension-management.py): install and remove Gnome Shell extensions.
* [sync](sync/): rsync wrapper to copy files from and to my NAS. WIP.
* [wake-on-lan](wake-on-lan/): Scripts to boot my desktop computer from my Raspberry Pi.

## Variables to set in .bashrc

### Utility
* `SCRIPTS_FOLDER`: absolute path to this folder
* `PUSHBULLET_ACCESS_TOKEN`: access token for Pushbullet

### Backups & Synchronization
* `DEFAULT_SYNC_HOME`: absolute path to the folder where the home directory is backed up 
* `PASSPHRASE`: passphrase of the GPG key used to encrypt Duplicity backups
* `B2_KEY_ID`: Backblaze B2 key ID
* `B2_APP_KEY`: Backblaze B2 application key
* `B2_BUCKET_NAME`: Name of the Backblaze B2 bucket to backup to

### Wake on LAN
* `DESKTOP_NET_MASK`: Mask of the network the computer is on (ex: 192.168.0.255)
* `DESKTOP_MAC`: MAC address of the computer.
* `DESKTOP_DNS`: DNS name of the computer. Can be its IP address.
