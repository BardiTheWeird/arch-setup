sudo mkdir -p /etc/systemd/system
sudo cp units/keychron.service /etc/systemd/system
sudo systemctl enable --now keychron.service

