#!/bin/bash
#set -e
##################################################################################################################
# Author    : mstrws
# Website   : 
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
##################################################################################################################

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

##################################################################################################################

if [ "$DEBUG" = true ]; then
    echo
    echo "------------------------------------------------------------"
    echo "Running $(basename $0)"
    echo "------------------------------------------------------------"
    echo
    read -n 1 -s -r -p "Debug mode is on. Press any key to continue..."
    echo
fi

echo
tput setaf 2
echo "################################################################"
echo "################### graphics drivers AMD"
echo "################################################################"
tput sgr0
echo

sudo pacman -S --noconfirm --needed vulkan-radeon
sudo pacman -S --noconfirm --needed vulkan-headers
sudo pacman -S --noconfirm --needed vulkan-tools

echo
tput setaf 2
echo "################################################################"
echo "################### wine-staging and dependencies"
echo "################################################################"
tput sgr0
echo

sudo pacman -S --noconfirm --needed wine-staging
sudo pacman -S --noconfirm --needed giflib
sudo pacman -S --noconfirm --needed lib32-giflib
sudo pacman -S --noconfirm --needed libpng
sudo pacman -S --noconfirm --needed lib32-libpng
sudo pacman -S --noconfirm --needed libldap
sudo pacman -S --noconfirm --needed lib32-libldap
sudo pacman -S --noconfirm --needed gnutls
sudo pacman -S --noconfirm --needed lib32-gnutls
sudo pacman -S --noconfirm --needed mpg123
sudo pacman -S --noconfirm --needed lib32-mpg123
sudo pacman -S --noconfirm --needed openal
sudo pacman -S --noconfirm --needed lib32-openal
sudo pacman -S --noconfirm --needed v4l-utils
sudo pacman -S --noconfirm --needed lib32-v4l-utils
sudo pacman -S --noconfirm --needed libpulse
sudo pacman -S --noconfirm --needed lib32-libpulse
sudo pacman -S --noconfirm --needed libgpg-error
sudo pacman -S --noconfirm --needed lib32-libgpg-error
sudo pacman -S --noconfirm --needed alsa-plugins
sudo pacman -S --noconfirm --needed lib32-alsa-plugins
sudo pacman -S --noconfirm --needed alsa-lib
sudo pacman -S --noconfirm --needed lib32-alsa-lib
sudo pacman -S --noconfirm --needed libjpeg-turbo
sudo pacman -S --noconfirm --needed lib32-libjpeg-turbo
sudo pacman -S --noconfirm --needed sqlite
sudo pacman -S --noconfirm --needed lib32-sqlite
sudo pacman -S --noconfirm --needed libxcomposite
sudo pacman -S --noconfirm --needed lib32-libxcomposite
sudo pacman -S --noconfirm --needed libxinerama
sudo pacman -S --noconfirm --needed lib32-libgcrypt
sudo pacman -S --noconfirm --needed libgcrypt
sudo pacman -S --noconfirm --needed lib32-libxinerama
sudo pacman -S --noconfirm --needed ncurses
sudo pacman -S --noconfirm --needed lib32-ncurses
sudo pacman -S --noconfirm --needed opencl-icd-loader
sudo pacman -S --noconfirm --needed lib32-opencl-icd-loader
sudo pacman -S --noconfirm --needed libxslt
sudo pacman -S --noconfirm --needed lib32-libxslt
sudo pacman -S --noconfirm --needed libva
sudo pacman -S --noconfirm --needed lib32-libva
sudo pacman -S --noconfirm --needed gtk3
sudo pacman -S --noconfirm --needed lib32-gtk3
sudo pacman -S --noconfirm --needed gst-plugins-base-libs
sudo pacman -S --noconfirm --needed lib32-gst-plugins-base-libs
sudo pacman -S --noconfirm --needed vulkan-icd-loader
sudo pacman -S --noconfirm --needed lib32-vulkan-icd-loader
sudo pacman -S --noconfirm --needed wine-mono
sudo pacman -S --noconfirm --needed wine-gecko
sudo pacman -S --noconfirm --needed winetricks

echo
tput setaf 6
echo "######################################################"
echo "###################  $(basename $0) done"
echo "######################################################"
tput sgr0
echo