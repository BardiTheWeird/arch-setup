pacman -S sudo

echo "adding sudo group..."
groupadd sudo

echo "adding a user bardi..."
useradd -m bardi -G sudo,audio,video,lp

echo "create a password for bardi:"
passwd bardi

# make is possible to use sudo for users in sudo group
sed -i 's/# %sudo/%sudo/g' /etc/sudoers
