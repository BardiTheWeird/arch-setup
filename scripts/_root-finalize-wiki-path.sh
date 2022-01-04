# Set up local time
ln -sf /usr/share/zoneinfo/Europe/Kiev /etc/localtime
hwclock --systohc

# Set up locales
LOCALES_QUERY='#\(uk_UA.UTF-8 UTF-8\|en_US.UTF-8 UTF-8\|ru_RU.UTF-8 UTF-8\)'
sed -i "s/$LOCALES_QUERY/\\1/g" /etc/locale.gen
locale-gen

# Set up hostname
echo "barch" > /etc/hostname

# Set up a root password
echo "Provide a password for a root user:"
passwd
