sudo pacman -S $(< packages/desktop)

mkdir ~/.config
cp -r configs/sway ~/.config

echo "Add the following to your profile file:"
echo "export QT_QPA_PLATFORM=wayland"
echo "export MOZ_ENABLE_WAYLAND=1"
echo "#########"
echo "Add the following to ~/.config/chromium-flags.conf:"
echo "--enable-features=UseOzonePlatform"
echo "--ozone-platform=wayland"

