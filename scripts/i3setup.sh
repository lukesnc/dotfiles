#!/bin/bash
# Only works with pacman rn 

set -e

sudo pacman -S i3 xss-lock alacritty rofi brightnessctl network-manager-applet gnu-free-fonts noto-fonts

repodir=$(realpath "$(dirname "$0")/..")
mkdir -vp ~/.config
cp -vr "$repodir/.config/i3" ~/.config
cp -vr "$repodir/.config/i3status" ~/.config
cp -vr "$repodir/.config/rofi" ~/.config
cp -v "$repodir/.xinitrc" ~/.xinitrc

cat << EOF
Done.
Optionally install
    redshift for blue light filtering
    feh for desktop wallpaper
    fcitx5-im and fcitx5-mozc for Japanese keyboard input
    blueman for bluetooth support (includes blueman-applet)
EOF
