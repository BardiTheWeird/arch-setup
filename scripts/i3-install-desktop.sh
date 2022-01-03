sudo pacman -S $(< packages/i3-desktop)

mkdir ~/.config
cp -r configs/i3 ~/.config

echo "exec i3" >> ~/.xinitrc
