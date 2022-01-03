sudo pacman -S $(< packages/i3-desktop)

pulseaudio -D

mkdir ~/.config
cp -r configs/i3 ~/.config

echo "exec i3" >> ~/.xinitrc
