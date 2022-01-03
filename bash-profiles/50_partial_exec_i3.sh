# This will start xinit, but only on TTY1. xinit will read xinitrc and start i3 and keep the X session alive until i3 exists.
if [ -z "$DISPLAY" -a $XDG_VTNR -eq 1 ]; then
  startx
fi
