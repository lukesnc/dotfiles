#!/usr/bin/env bash
# Only works with pacman rn 

set -e

sudo pacman -S xorg-server xorg-xinit xclip xss-lock i3-wm i3status i3lock dmenu brightnessctl network-manager-applet gnu-free-fonts noto-fonts noto-fonts-cjk

repodir=$(realpath "$(dirname "$0")/..")
mkdir -vp ~/.config
cp -vr "$repodir/.config/i3" ~/.config
cp -vr "$repodir/.config/i3status" ~/.config
cp -v "$repodir/.xinitrc" ~/.xinitrc

cat << EOF
Done.
Optionally install
    redshift for blue light filtering
    feh for desktop wallpaper
    fcitx5-im and fcitx5-mozc for Japanese keyboard input
    blueman for bluetooth support (includes blueman-applet)
EOF
