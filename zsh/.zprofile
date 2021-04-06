# set variables
export BROWSER="firefox"
export EDITOR="nvim"
export TERMINAL="alacritty"

# add .local/bin to path
export PATH=/home/spencer/.local/bin:$PATH

# automatically start Xorg on log in
[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx
