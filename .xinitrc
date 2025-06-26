#!/bin/sh
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
# Completely disable screen blank/timeout
# xset s off -dpms

exec i3
