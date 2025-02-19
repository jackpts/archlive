#!/bin/bash
useradd -m -s /bin/fish jacky
echo "jacky:123" | chpasswd
systemctl enable NetworkManager

pacman -S git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S --noconfirm paru

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth 1 https://github.com/jackpts/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow .

pacman -S hyprland starship swayimg waybar rofi swaync obs-studio jq wl-clipboard libnotify nitrogen copyq figlet gum ttf-font-awesome ttf-fira-sans ttf-fira-code ttf-firacode-nerd ttf-droid ttf-jetbrains-mono ttf-jetbrains-mono-nerd gnome-calendar mpd ncmpcpp networkmanager-dmenu brightnessctl wf-recorder
yay -S hyprpicker arch-update hyprwall swaybg hyprlock hyprpicker scrot xclip hyprshot brightnessctl hyprpolkitagent hyprsunset hyprsysteminfo hypridle hyprswitch ttf-cascadia-code-nerd mission-center checkupdates-with-aur paru walker-bin ttf-maple-beta
