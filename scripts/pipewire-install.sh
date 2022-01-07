sudo pacman -S $(< packages/pipewire)

# Copy default configuration templates
sudo cp -r /usr/share/pipewire/ /etc/pipewire
sudo cp -r /usr/share/wireplumber/ /etc/wireplumber

systemctl --user enable --now pipewire.socket
systemctl --user enable --now pipewire.service
systemctl --user enable --now wireplumber.service
systemctl --user enable --now pipewire-pulse.service 
