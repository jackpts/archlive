#!/bin/bash
useradd -m -s /bin/fish jacky
echo "jacky:123" | chpasswd
systemctl enable NetworkManager

sudo pacman -S git base-devel
cd $HOME/Downloads
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S --noconfirm paru
