sudo pacman -S $(< packages/sway-desktop)

mkdir -p ~/.config
cp -r configs/sway ~/.config

sudo bash -c 'echo "QT_QPA_PLATFORM=wayland" >> /etc/environment'
sudo bash -c 'echo "MOZ_ENABLE_WAYLAND=1" >> /etc/environment'

echo "--enable-features=UseOzonePlatform" >> ~/.config/chromium-flags.conf
echo "--ozone-platform=wayland" >> ~/.config/chromium-flags.conf
cp ~/.config/chromium-flags.conf ~/.config/electron-flags.conf
ln -s ~/.config/electron-flags.conf ~/.config/electron12-flags.conf 
ln -s ~/.config/electron-flags.conf ~/.config/electron13-flags.conf 
