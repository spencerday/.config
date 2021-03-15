xwallpaper --stretch /home/spencer/.local/share/bg &
unclutter &
picom -b &
xset r rate 300 50 &
xset s 300 5 &
xss-lock -l -- xlock -mode dclock -mousemotion &
xinput set-prop "Elan Touchpad" "libinput Tapping Enabled" 1 &
dwmblocks &
exec dwm
