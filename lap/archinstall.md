# Arch Linux install: Laptop

## Set font

```bash
setfont ter-122b
```

## Connect to internet

```bash
iwctl
station wlan0 connect (nombre del wifi)
```

## Partition and format disks

```bash
fdisk -l
fdisk /dev/...
mkfs.ext4 /dev/root_partition
```

## Mount partitions

```bash
mount /dev/sdX2 /mnt
mkdir -p /mnt/boot/efi
mount /dev/sdX1 /mnt/boot/efi
```

## Install base system

```bash
pacstrap -K /mnt base linux linux-firmware
```

## Generate filesystem table

```bash
genfstab -U /mnt >> /mnt/etc/fstab
```

## Enter chroot

```bash
arch-chroot /mnt
```

## Set time and locale

```bash
ln -sf /usr/share/zoneinfo/Region/City /etc/localtime
hwclock --systohc
```

## Localization

```bash
nano /etc/locale.gen
locale-gen
```

## Config TTY

```bash
pacman -S terminus-font
echo "LANG=en_US.UTF-8" > /etc/locale.conf
echo "FONT=ter-122b" > /etc/vconsole.conf
```

## Network configuration

```bash
echo "yourhostname" > /etc/hostname
```

## Install bootloader

```bash
pacman -S grub efibootmgr os-prober
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
nano /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
```

## Create user and configure sudo

```bash
useradd -m -G wheel -s /bin/bash tu_usuario
passwd tu_usuario
pacman -S vi sudo
visudo
```

Uncomment: `%wheel ALL=(ALL) ALL`

## Install drivers and firmware (Intel)

```bash
pacman -S sof-firmware mesa xf86-video-intel
```

## Install and configure NetworkManager

```bash
pacman -S networkmanager
systemctl enable NetworkManager
nmtui
```
