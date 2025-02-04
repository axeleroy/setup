loremcopy() {
  lipsum-cli "$@" | tee >(wl-copy)
}

alias uuid="uuidgen | tee >(wl-copy)"
