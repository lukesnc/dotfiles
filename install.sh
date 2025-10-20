#!/usr/bin/env bash
# This only really works for .config entries right now
# usage: install.sh ENTRY1 ENTRY2 ...

set -ex

[ ! -z $1 ]

srcdir=$(realpath $(dirname "$0"))
pushd "$srcdir"

[ -e ~/.config ] || mkdir -p ~/.config

for argv in "$@"; do
    src=$(realpath "$srcdir/.config/$argv")
    dest=$(realpath "$HOME/.config")
    dest+="/$argv"
    [ ! -e "$dest" ]
    ln -siv "$src" "$dest"
done

popd
