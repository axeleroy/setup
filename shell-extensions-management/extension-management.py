import sys
from extensions_utils import *


def install(uuid):
    try:
        version = get_extension_version(uuid)
        download_extension(uuid, version)
        extract_extension(uuid)
    except ExtensionError as err:
        print(err.message)


def remove(uuid):
    remove_extension(uuid)


def parse_args():
    args = sys.argv
    if len(args) != 3 or (args[1] not in ['install', 'remove']):
        print(f'Usage: {args[0]} <install|remove> uuid')
        exit(1)
    return args[1], args[2]


def main():
    mode, uuid = parse_args()
    if mode == 'install':
        install(uuid)
    else:
        remove(uuid)


main()
