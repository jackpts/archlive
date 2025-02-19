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
    # ...
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
