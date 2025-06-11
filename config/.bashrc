# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi
# Source VTE
if [ -f /etc/profile.d/vte.sh ]; then
    . /etc/profile.d/vte.sh
fi

# Inspired by https://daler.github.io/dotfiles/bash.html
for file in ~/.{path,exports,bash_prompt,functions,aliases,extra}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

if which mise &> /dev/null
then
  eval "$(mise activate bash)"
fi
