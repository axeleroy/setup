# Axel Leroy's setup

Various configuration files and scripts to set up and manage my computers.  

## Folder structure
* [backup](backup/): backup scripts.
* [config](config/): shell config files.
* [docker](docker/): Docker management scripts.
* [pipewire](pipewire/): Pipewire configuration.
* [setup](setup/): scripts to set up my computers.
* [systemd](systemd/): systemd services and units.

## Variables to set in `~/.extra`

* `SHELL_SETUP_PATH`: path to this project

### Backups & Synchronization
* `RESTIC_REPOSITORY`: used in [restic-desktop.sh](backup/restic-desktop.sh) to set where my backup should live on my NAS
* `RESTIC_PASSWORD_FILE`: path to the file containing the restic password
