# Automated setup

This folder contains scripts used to set up my computers. They are executed by a [migration script](migrate.sh) inspired
by database migration tools like Flyway.

In addition, it installs utilities and applications listed in [Brewfile](Brewfile), as well as GNOME Extensions listed 
in [gnome-extensions-management](gnome-extensions-management).

## Migrations

* [01-install-base-software](01-install-base-software.sh): seeds `teeldear`'s config and installs `isd` and
  `gnome-extensions-cli` through `uv`.
* [02-set-config](02-set-config.sh): copies my shell config files.
* [06-setup-services](06-setup-services.sh): sets up the automated backup service, as well as a service that pulls this
  repo on startup.
* [07-enable-pipewire-switch-on-connect](07-enable-pipewire-switch-on-connect.sh): enables Pipewire's
  `switch-on-connect`
  module.
* [09-set-up-gitconfig](09-set-up-gitconfig.sh): copies `.gitconfig` and `.gitignore` to `$HOME`.
* [12-link-wireplumber-conf](12-link-wireplumber-conf.sh): copies a custom WirePlumber configuration to set devices
  priorities.
* [13-copy-curl-format.sh](13-copy-curl-format.sh): copies a `.curl_format` file to `$HOME` and sets up an alias
  [in order to mesure responses times](https://stackoverflow.com/a/22625150).
* [15-disable-hsp-hfp-profiles](15-disable-hsp-hfp-profiles.sh): copies a custom WirePlumber configuration to only
  enable A2DP bluetooth profile (thus disabling HSP and HFP profiles).
* [17-setup-flatpack-update-service](17-setup-flatpack-update-service.sh): systemd timer and service to automatically
  update Flatpaks on SteamOS.
* [18-setup-mise](18-setup-mise.sh): installs and sets up [mise-en-place](https://mise.jdx.dev).
* [24-disable-ibus-emoji-hotkey](24-disable-ibus-emoji-hotkey.sh): [disables the Unicode Code Point shortcut](https://superuser.com/questions/358749/how-to-disable-ctrlshiftu/1392682#1392682)
  as it interferes with JetBrains IDEs' "Toggle Case" shortcut (both are set to
  <kbd><kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>U</kbd></kbd>).
* [25-install-pg_activity](25-install-pg_activity.sh): installs [pg_activity](https://github.com/dalibo/pg_activity).
* [30-patch-extensions-for-gnome-50](30-patch-extensions-for-gnome-50.sh): patches extensions GNOME 50 support.
* [31-re-enable-middle-click-paste](31-re-enable-middle-click-paste.sh): re-enables middle-click paste.
* [33-fix-global-pnpm-config](33-fix-global-pnpm-config.sh): links global pnpm config file.
