# Axel Leroy's shell setup

## Folder structure
* [backup](backup/): backup scripts.
* [config](config/): config files.
* [docker](docker/): Docker management scripts.
* [setup](setup/): scripts to set up my computers.
* [systemd](systemd/): systemd services and units.

## Variables to set in .profile

### Backups & Synchronization
* `RESTIC_REPOSITORY`: used in [restic-desktop.sh](backup/restic-desktop.sh) to set where my backup should live on my NAS
* `RESTIC_PASSWORD_FILE`: path to the file containing the restic password
