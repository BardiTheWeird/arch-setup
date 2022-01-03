sudo pacman -S $(< packages/pipewire)

systemctl --user enable --now pipewire.socket
systemctl --user enable --now pipewire.service
systemctl --user enable --now wireplumber.service
systemctl --user enable --now pipewire-pulse.service 
