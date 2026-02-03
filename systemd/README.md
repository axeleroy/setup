# systemd units and services

* `backup.timer` and `backup.service`: runs a backup script every 15 minutes after the computer has been up for more
  than 5 minutes.
* `flatpak-update.timer` and `flatpak-update.service`: updates Flatpaks hourly, designed for running on the Steam Deck.
* `github2forgejo.timer` and `github2forgejo`: runs [github2forgejo](https://github.com/PatNei/GITHUB2FORGEJO) to
  mirror GitHub repos to Forgejo daily.
* `pull-setup.service`: pulls this repo on session start
* `run-media-*.mount` and `run-media-*.automount`: units for auto mounting NFS shares. Have to be copied to
  `/etc/systemd/system` and then enabled with
    ```shell
    sudo systemctl daemon-reload
    sudo systemctl enable run-media-media.automount
    sudo systemctl enable run-media-photos.automount
    sudo systemctl enable run-media-storage.automount
    ```
  (see https://rayagainstthemachine.net/linux%20administration/systemd-automount/)
* `update-botslist.timer` and `update-botslist.service`: updates the list of user agents to block in Caddy, based
  on [ai.robots.txt](https://github.com/ai-robots-txt/ai.robots.txt) plus a few others.
