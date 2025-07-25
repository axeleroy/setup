# Automated setup

This folder contains scripts used to set up my computers. They are executed by a [migration script](migrate.sh) inspired
by database migration tools like Flyway.

## Migrations

* [01-install-base-software](01-install-base-software.sh): installs `uv`, `tealdeer`, `isd`, `gnome-extensions-cli`
  and `gojq`.
* [02-set-config](02-set-config.sh): copies my shell config files.
* [04-setup-base-gnome-extensions.sh](04-setup-base-gnome-extensions.sh): installs and enables preferred GNOME extensions
  using [gnome-extensions-cli](https://github.com/essembeh/gnome-extensions-cli).
* [06-setup-services](06-setup-services.sh): sets up the automated backup service, as well as a service that pulls this
  repo on startup.
* [07-enable-pipewire-switch-on-connect](07-enable-pipewire-switch-on-connect.sh): enables Pipewire's `switch-on-connect`
  module.
* [08-install-flatpaks](08-install-flatpaks.sh): installs [Zen Browser](https://zen-browser.app/),
  [Valuta](https://apps.gnome.org/app/io.github.idevecore.Valuta), [Signal](https://signal.org/download/),
  [LocalSend](https://localsend.org) and [Text Pieces](https://apps.gnome.org/app/io.gitlab.liferooter.TextPieces).
* [09-set-up-gitconfig](09-set-up-gitconfig.sh): copies `.gitconfig` and `.gitignore` to `$HOME`.
* [10-install-qrtool](10-install-qrtool.sh): installs [`qrtool`](https://github.com/sorairolake/qrtool).
* [11-install-gimp-inkscape](11-install-gimp-inkscape.sh): installs GIMP and Inkscape.
* [12-link-wireplumber-conf](12-link-wireplumber-conf.sh): copies a custom WirePlumber configuration to set devices 
  priorities.
* [13-copy-curl-format.sh](13-copy-curl-format.sh): copies a `.curl_format` file to `$HOME` and sets up an alias
  [in order to mesure responses times](https://stackoverflow.com/a/22625150).
* [14-install-resources](14-install-resources.sh): installs [Resources](https://apps.gnome.org/fr/Resources/).
* [15-disable-hsp-hfp-profiles](15-disable-hsp-hfp-profiles.sh): copies a custom WirePlumber configuration to only 
enable A2DP bluetooth profile (thus disabling HSP and HFP profiles).
* [16-install-removed-packages](16-install-removed-packages.sh): installs [Refine](https://flathub.org/apps/page.tesk.Refine)
and [Document Scanner](https://flathub.org/apps/org.gnome.SimpleScan) as Flatpaks, since GNOME Tweaks and Scanner
packages [have been removed in Bluefin](https://universal-blue.discourse.group/t/upcoming-changes-to-bluefin-packages-for-the-f42-release/7711).
* [17-setup-flatpack-update-service](17-setup-flatpack-update-service.sh): systemd timer and service to automatically
update Flatpaks on SteamOS.
* [18-setup-mise](18-setup-mise.sh): installs and sets up [mise-en-place](https://mise.jdx.dev).
* [19-install-ignition](19-install-ignition.sh): installs [Ignition](https://github.com/flattool/ignition/) to replace 
the lost startup management feature from GNOME Tweaks.
* [20-install-duckdb](20-install-duckdb.sh): installs DuckDB.
* [21-install-libreoffice](21-install-libreoffice.sh): installs LibreOffice.
* [22-patch-always-show-title-extension](22-patch-always-show-title-extension.sh): patches the extension
[Always Show Titles In Overview](https://extensions.gnome.org/extension/1689/always-show-titles-in-overview/) for GNOME
48 supports. Also installs [moreutils](https://joeyh.name/code/moreutils/).
* [23-install-pandoc-html2markdown](23-install-pandoc-html2markdown.sh): installs Pandoc and [html2markdown](https://github.com/JohannesKaufmann/html-to-markdown).
* [24-disable-ibus-emoji-hotkey](24-disable-ibus-emoji-hotkey.sh): [disables the Unicode Code Point shortcut](https://superuser.com/questions/358749/how-to-disable-ctrlshiftu/1392682#1392682)
  as it interferes with JetBrains IDEs' "Toggle Case" shortcut (both are set to
  <kbd><kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>U</kbd></kbd>).
* [25-install-pg_activity](25-install-pg_activity.sh): installs [pg_activity](https://github.com/dalibo/pg_activity).
* [26-install_rdap](26-install_rdap.sh): installs [OpenRDAP](https://www.openrdap.org/).

## Other files

* [gnome-extensions-install-list.txt](gnome-extensions-install-list.txt) and [gnome-extensions-disable-list.txt](gnome-extensions-disable-list.txt): Gnome Shell extensions installed and disabled by [gnome-extensions.sh](04-setup-base-gnome-extensions.sh). 
