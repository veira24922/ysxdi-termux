#!/bin/bash
echo -e "__   ________  ______ ___ "
echo -e "\ \ / / ___\ \/ /  _ \_ _|"
echo -e " \ V /\___ \\  /| | | | | "
echo -e "  | |  ___) /  \| |_| | | "
echo -e "  |_| |____/_/\_\____/___|"
echo -e "Yet Simple XFCE Desktop Installer — for Termux users\n - made by veira -\n"

while [[ 1 ]]; do
    read -p "Are you sure you want to install this? (y/n) " choice
    if [[ $choice == "y" ]]; then
        break
    fi
    if [[ $choice == "n" ]]; then
        exit
    fi
done

echo -e "\n[YSXDI] Removing user folders..."
rmdir ~/.local
rmdir ~/.config
rmdir ~/.cache
rmdir ~/Documents
rmdir ~/Downloads
rmdir ~/Pictures
rmdir ~/Videos
rmdir ~/Music
rmdir ~/Models
rmdir ~/Projects

echo -e "[YSXDI] Creating user folders..."
mkdir ~/.local
mkdir ~/.config
mkdir ~/.cache
mkdir ~/Documents
mkdir ~/Downloads
mkdir ~/Pictures
mkdir ~/Videos
mkdir ~/Music
mkdir ~/Models
mkdir ~/Projects

echo -e "[YSXDI] Updating packages..."
pkg update
pkg upgrade -y
echo -e "[YSXDI] Installing X11 packages if it doesn't exist..."
pkg install x11-repo -y
pkg install termux-x11-nightly -y
echo -e "[YSXDI] Installing XFCE4 desktop..."
pkg install xfce4 xfce4-goodies -y
echo -e "[YSXDI] Installing additional packages..."
pkg install librewolf libreoffice micro -y

echo -e "[YSXDI] Installing xfce-start.sh"
curl -C - -o "$HOME/xfce-start.sh" "https://raw.githubusercontent.com/veira24922/ysxdi-termux/refs/heads/main/xfce-start.sh"
echo -e "\nDone installing the desktop! To start XFCE, run 'bash ~/xfce-start.sh', then open Termux:X11 onto your device to see the GUI."
