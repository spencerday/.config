xwallpaper --center /home/spencer/.local/share/bg &
unclutter &
picom -b &
xset r rate 300 50 &
xset s 300 5 &
xss-lock -l -- xlock -mode dclock -mousemotion &
dwmblocks &
exec dwm
