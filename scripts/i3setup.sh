#!/bin/bash
# Run from the root of the repo ie.
# $ ./scripts/i3setup.sh

sudo pacman -S i3 alacritty rofi brightnessctl network-manager-applet gnu-free-fonts noto-fonts

mkdir -v -p ~/.config/i3
cp -v ./.config/i3/config ~/.config/i3/

mkdir -v -p ~/.config/rofi
cp -v ./.config/rofi/config.rasi ~/.config/rofi/

cp -v ./.xinitrc ~

echo 'if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec startx
fi' >> ~/.bash_profile

echo "Done."
echo "Optionally install"
echo "    redshift for blue light filtering"
echo "    feh for desktop wallpaper"
echo "    fcitx5-im and fcitx5-mozc for Japanese keyboard input"
echo "    blueman for bluetooth support (includes blueman-applet)"
