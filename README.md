# archiso | archlive

```bash
    sudo pacman -S archiso
    mkdir ~/archlive
    cd ~/archlive
    cp -r /usr/share/archiso/configs/releng/* .

    # add needed packages
    nano packages.x86_64

```

### set customize_airootfs.sh

```bash
    nano ~/archlive/archiso/airootfs/root/customize_airootfs.sh
```

```bash
#!/bin/bash
    useradd -m -s /bin/fish jacky
    echo "jacky:123" | chpasswd
    systemctl enable NetworkManager

    pacman -S --noconfirm yay
    yay -S --noconfirm paru

    # For hyprland config:
    mkdir -p ~/archlive/archiso/airootfs/home/user/.config/hypr
    mkdir -p ~/archlive/archiso/airootfs/home/user/.config/waybar
    cp /path/to/your/hyprland.conf ~/archlive/archiso/airootfs/home/user/.config/hypr/
    cp -r /path/to/your/waybar/config ~/archlive/archiso/airootfs/home/user/.config/waybar/
```

```bash
    chmod +x ~/archlive/archiso/airootfs/root/customize_airootfs.sh
```

### Build

```bash
    sudo mkarchiso -v .
    // sudo mkarchiso -v -w ./work -o ./out ./archiso

```

### Check `out` dir to further iso burning to flash drive

