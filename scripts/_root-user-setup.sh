echo "adding a user bardi"
sudo useradd -m bardi -G sudo,docker
echo "create a password for bardi:"
passwd bardi
echo "uncomment the '%sudo ALL=(ALL) ALL' line in /etc/sudoers"