# Automated setup

This folder scripts used to set up my computers. They are executed by a [migration script](migrate.sh) inspired by
database migration scripts like Flyway.

## Migrations

* [02-set-config](02-set-config.sh): copies my shell config files.
* [03-git-setup](03-git-setup.sh): Sets up Git.
* [04-setup-base-gnome-extensions.sh](04-setup-base-gnome-extensions.sh): Installs and enables preferred GNOME extensions
  using [gnome-extensions-cli](https://github.com/essembeh/gnome-extensions-cli).
* [06-setup-services](06-setup-services.sh): Sets up automated the backup service, as well as a service that pulls this
  repo on startup.
* [07-enable-pipewire-switch-on-connect](07-enable-pipewire-switch-on-connect.sh): Enables Pipewire's `switch-on-connect`
  module.

## Other files

* [is-steamos.sh](is-steamos.sh): function to determine if the current migration is running on my Steam Deck.
* [gnome-extensions-install-list.txt](gnome-extensions-install-list.txt) and [gnome-extensions-disable-list.txt](gnome-extensions-disable-list.txt): Gnome Shell extensions installed and disabled by [gnome-extensions.sh](04-setup-base-gnome-extensions.sh). 
