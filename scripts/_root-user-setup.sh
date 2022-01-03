pacman -S sudo

echo "adding sudo group..."
groupadd sudo

echo "adding a user bardi..."
useradd -m bardi -G sudo

echo "create a password for bardi:"
passwd bardi

echo "uncomment the '%sudo ALL=(ALL) ALL' line in /etc/sudoers"
