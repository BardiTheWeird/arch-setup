# sudo mkdir -p /etc/systemd/system
# sudo cp units/keychron.service /etc/systemd/system
# sudo systemctl enable --now keychron.service

echo 0 > /sys/module/hid_apple/parameters/fnmode