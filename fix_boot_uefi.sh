#/bin/bash

sudo grub-install
sudo update-grub
sudo cp /boot/grub/x86_64-efi/core.efi /boot/efi/EFI/boot/bootx64.efi
sudo efibootmgr -c -d /dev/sda -p 1 -L "manjaro" -l "\EFI\Manjaro\grubx64.efi"
#sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=manjaro --recheck

