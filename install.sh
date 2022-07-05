#!/bin/sh

dnf -y update

dnf -y install screenfetch
dnf -y install mc vim gvim emacs tmux kwrite eclipse
dnf -y install idle3 python2 python3
dnf -y install hg tortoisehg-nautilus optimizer
dnf -y install qt4 qt5 qt-devel qtcreator
dnf -y install wireshark
dnf -y install ghex
dnf -y install avrdude avr-gcc
dnf -y install sdcc sdcc-doc sdcc-libraries sdcc-ucsim


dnf -y install unzip p7zip unrar cabextract gparted


dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf -y install vlc libvlcpp-devel amarok ffmpeg

dnf -y install libreoffice gimp kcalc kalgebra optimizer
dnf -y install curl cabextract xorg-x11-font-utils fontconfig

dnf -y install wine


dnf -y install binutils gcc make patch 
dnf -y install libgomp glibc-headers glibc-devel 
dnf -y install kernel-headers kernel-devel 
dnf -y install dkms qt5-qtx11extras libxkbcommon

cd /etc/yum.repos.d/
wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
dnf install VirtualBox-6.1
usermod -a -G vboxusers alexey
usermod -a -G dialout alexey