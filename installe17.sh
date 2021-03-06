#!/usr/bin/bash

# REPOSITORIES
xbps-install -Svy void-repo-multilib void-repo-nonfree

# XORG PACKAGES
xbps-install -Svy xorg-minimal xorg-input-drivers xorg-video-drivers xrandr setxkbmap xauth vdpauinfo libvdpau-va-gl font-misc-misc terminus-font dejavu-fonts-ttf dbus-elogind-x11
  
# KERNEL
xbps-install -Svy linux-firmware-network dkms linux-firmware

# SOUND
xbps-install -Svy alsa-plugins-pulseaudio paprefs pavucontrol pipewire alsa-utils gstreamer1-pipewire

# NETWORK
xbps-install -Svy  NetworkManager network-manager-applet ntp wget

# DESKTOP ENVIRONMENT
xbps-install -Svy lightdm lightdm-gtk3-greeter enlightenment terminology qt5ct qt5-styleplugins xdg-utils xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-kde xdg-user-dirs xdg-user-dirs-gtk libappindicator AppStream

# LOOK AND FEEL
xbps-install -Svy adwaita-icon-theme Adapta gnome-themes-standard

# FILE SYSTEM
xbps-install -Svy ntfs-3g exfat-utils fuse-exfat gvfs-afc gvfs-mtp udisks2 pcmanfm-qt

# AUTH
xbps-install -Svy elogind dbus-elogind 

# DEVELOPMENT
xbps-install -Svy git FeatherPad vscode nano

# ARCHIVE SOFTWARE
xbps-install -Svy dtrx p7zip

# POWER MANAGEMENT
xbps-install -Svy  upower

# UTILITIES
xbps-install -Svy htop bash-completion unzip

# INTERNET
xbps-install -Svy firefox

# SERVICES
ln -s /etc/sv/dbus /var/service
ln -s /etc/sv/elogind /var/service
ln -s /etc/sv/NetworkManager /var/service
ln -s /etc/sv/lightdm /var/service

# GROUP SUDO
addgroup sudo

