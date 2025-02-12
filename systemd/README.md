# systemd units and services

* `backup.timer` and `backup.service`: runs a backup script every 15 minutes after the computer has been up for more than 5 minutes
* `run-media-*.mount` and `run-media-*.automount`: units for auto mounting NFS shares
