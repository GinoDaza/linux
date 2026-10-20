# Arch Linux install: VirtualBox VM

## VM settings

BIOS mode (**Use EFI** unchecked).

| Setting | Value |
| --- | --- |
| Name / Type / Version | `arch` / Linux / Arch Linux (64-bit) |
| Unattended Installation | unchecked |
| RAM | 2048 MB (4096 MB recommended for KDE Plasma) |
| CPUs | 4 |
| Disk | 16 GB |
| Graphics Controller | VMSVGA, 128 MB video memory (Settings > Display) |

## Guided install (JSON)

```bash
ping -c2 archlinux.org
curl -O https://raw.githubusercontent.com/GinoDaza/linux/main/vm/config.json
archinstall --config config.json
```

Enter the user and password in the menu and check the timezone, then install.

## Manual install

### Set font

```bash
setfont ter-122b
```

### Check internet

The VM uses NAT, so `iwctl` is not needed.

```bash
ping -c2 archlinux.org
```

### Partition and format disks (BIOS/MBR, single partition)

```bash
fdisk -l
fdisk /dev/sda
```

Inside `fdisk`: `o` (new MBR table), `n` (new partition, accept defaults), `a` (bootable flag), `w` (write).

```bash
mkfs.ext4 /dev/sda1
```

### Mount partitions

```bash
mount /dev/sda1 /mnt
```

### Install base system

```bash
pacstrap -K /mnt base linux linux-firmware networkmanager grub sudo vi nano terminus-font
```

### Generate filesystem table

```bash
genfstab -U /mnt >> /mnt/etc/fstab
```

### Enter chroot

```bash
arch-chroot /mnt
```

### Set time and locale

```bash
ln -sf /usr/share/zoneinfo/Region/City /etc/localtime
hwclock --systohc
nano /etc/locale.gen
locale-gen
```

### Config TTY

```bash
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "FONT=ter-122b" > /etc/vconsole.conf
```

### Network configuration

```bash
echo "yourhostname" > /etc/hostname
```

### Root password

```bash
passwd
```

### Install bootloader (BIOS)

```bash
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
```

### Create user and configure sudo

```bash
useradd -m -G wheel -s /bin/bash tu_usuario
passwd tu_usuario
EDITOR=nano visudo
```

Uncomment: `%wheel ALL=(ALL:ALL) ALL`

### Enable NetworkManager

```bash
systemctl enable NetworkManager
```

### Finish

Remove the ISO from the VM storage settings before booting.

```bash
exit
umount -R /mnt
poweroff
```

## After first boot

### VirtualBox Guest Additions

```bash
sudo pacman -S virtualbox-guest-utils
sudo systemctl enable --now vboxservice
```

### Desktop environment

```bash
sudo pacman -S plasma alacritty
sudo systemctl enable sddm
```
