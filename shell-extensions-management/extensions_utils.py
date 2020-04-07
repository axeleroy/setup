from os.path import expanduser
import re
import requests
import shutil
import subprocess
import zipfile

EXTENSION_SITE = "https://extensions.gnome.org"


class ExtensionError(Exception):
    def __init__(self, message):
        self.message = message


def get_shell_version():
    version_raw = subprocess.check_output(["gnome-shell", "--version"])
    m = re.search('(\\d.\\d+)', version_raw.decode())
    return m.group(0)


def get_extension_folder(uuid):
    return expanduser(f'~/.local/share/gnome-shell/extensions/{uuid}')


def get_extension_version(uuid):
    r = requests.get(f'{EXTENSION_SITE}/extension-info/?uuid={uuid}')
    if r.status_code != 200:
        raise ExtensionError(f"Call to extension-info with uuid '{uuid}' failed with code {r.status_code}")
    version_map = r.json()['shell_version_map']
    shell_version = get_shell_version()
    if shell_version not in version_map:
        # Get highest available Gnome Shell version instead
        shell_version = list(version_map.keys())[len(version_map) - 1]
    return version_map[shell_version]['version']


def download_extension(uuid, version):
    r = requests.get(f'{EXTENSION_SITE}/extension-data/{uuid}.v{version}.shell-extension.zip')
    if r.status_code != 200:
        raise ExtensionError(f"Download of extension '{uuid}' with version tag {version} failed with code {r.status_code}")
    with open(f'/tmp/{uuid}.zip', 'wb') as f:
        f.write(r.content)


def extract_extension(uuid):
    with zipfile.ZipFile(f'/tmp/{uuid}.zip', 'r') as zip_file:
        zip_file.extractall(get_extension_folder(uuid))


def remove_extension(uuid):
    shutil.rmtree(get_extension_folder(uuid), ignore_errors=True)
