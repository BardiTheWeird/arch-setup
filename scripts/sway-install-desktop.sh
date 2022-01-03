sudo pacman -S $(< packages/sway-desktop)

mkdir ~/.config
cp -r configs/sway ~/.config

echo "QT_QPA_PLATFORM=wayland" >> /etc/environment
echo "MOZ_ENABLE_WAYLAND=1" >> /etc/environment

echo "--enable-features=UseOzonePlatform" >> ~/.config/chromium-flags.conf
echo "--ozone-platform=wayland" >> ~/.config/chromium-flags.conf
