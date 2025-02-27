# Automated setup

This folder contains scripts used to set up my computers. They are executed by a [migration script](migrate.sh) inspired
by database migration tools like Flyway.

## Migrations

* [01-install-base-software](01-install-base-software.sh): installs `uv`, `tealdeer`, `isd`, `gnome-extensions-cli`
  and `gojq`
* [02-set-config](02-set-config.sh): copies my shell config files.
* [03-git-setup](03-git-setup.sh): sets up Git.
* [04-setup-base-gnome-extensions.sh](04-setup-base-gnome-extensions.sh): installs and enables preferred GNOME extensions
  using [gnome-extensions-cli](https://github.com/essembeh/gnome-extensions-cli).
* [06-setup-services](06-setup-services.sh): sets up automated the backup service, as well as a service that pulls this
  repo on startup.
* [07-enable-pipewire-switch-on-connect](07-enable-pipewire-switch-on-connect.sh): enables Pipewire's `switch-on-connect`
  module.
* [08-install-flatpaks](08-install-flatpaks.sh): installs [Zen Browser](https://zen-browser.app/),
  [Valuta](https://apps.gnome.org/app/io.github.idevecore.Valuta), [Signal](https://signal.org/download/),
  [LocalSend](https://localsend.org) and [Text Pieces](https://apps.gnome.org/app/io.gitlab.liferooter.TextPieces).
* [09-set-up-gitconfig](09-set-up-gitconfig.sh): copies `.gitconfig` and `.gitignore` to `$HOME`.


## Other files

* [gnome-extensions-install-list.txt](gnome-extensions-install-list.txt) and [gnome-extensions-disable-list.txt](gnome-extensions-disable-list.txt): Gnome Shell extensions installed and disabled by [gnome-extensions.sh](04-setup-base-gnome-extensions.sh). 
