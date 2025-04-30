#!/bin/bash
# Run from the root of the repo ie.
# Only works on Arch rn
# $ ./scripts/i3setup.sh

sudo pacman -S i3 xss-lock alacritty rofi brightnessctl network-manager-applet gnu-free-fonts noto-fonts

mkdir -v -p ~/.config/i3
cp -v ./.config/i3/config ~/.config/i3/config

mkdir -v -p ~/.config/i3status
cp -v ./.config/i3status/config ~/.config/i3status/config

mkdir -v -p ~/.config/rofi
cp -v ./.config/rofi/config.rasi ~/.config/rofi/config.rasi

cp -v ./.xinitrc ~/.xinitrc

echo 'if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi' >> ~/.bash_profile

echo "Done."
echo "Optionally install"
echo "    redshift for blue light filtering"
echo "    feh for desktop wallpaper"
echo "    fcitx5-im and fcitx5-mozc for Japanese keyboard input"
echo "    blueman for bluetooth support (includes blueman-applet)"
