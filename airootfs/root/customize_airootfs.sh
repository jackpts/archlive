#!/bin/bash
useradd -m -s /bin/fish jacky
echo "jacky:123" | chpasswd
systemctl enable NetworkManager

pacman -S --noconfirm yay
yay -S --noconfirm paru
