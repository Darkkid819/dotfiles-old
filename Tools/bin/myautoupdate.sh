#!/usr/bin/sh
toilet -f smblock --filter rainbow "BTW I Use Arch"
read -p "Update System?"

echo "[Safety Protocol]"
echo "Checking Update....."
sudo pacman -Syyu
$SHELL
