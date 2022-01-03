pacman -S $(< packages/internet)
systemctl enable iwd.service
systemctl enable dhcpcd.service