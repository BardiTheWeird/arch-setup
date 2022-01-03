pacman -S $(< packages/grub)

EFI_PARTITION=$1
if [[ ! $EFI_PARTITION ]]
then
    echo "efi partition not specified, exiting..."
    exit 1
fi

mkfs.fat -F32 $EFI_PARTITION && \
mkdir /efi && \
mount $EFI_PARTITION /efi && \
grub-install --target=x86_64-efi --efi-directory=/efi && \
mkdir -p /boot/grub/ && \
grub-mkconfig -o /boot/grub/grub.cfg
