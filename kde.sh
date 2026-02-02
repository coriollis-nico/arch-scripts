#!/bin/bash
set -euo pipefail
IFS=$'\n\t'


cat plasma_basic.txt | sudo pacman -Syu --needed -

sudo systemctl enable sddm.service


cat maintenance.txt | sudo pacman -S --needed -

sudo systemctl enable bluetooth.service
sudo systemctl enable cups.socket
sudo systemctl enable power-profiles-daemon.service
sudo systemctl enable thermald.service


cat apps.txt | sudo pacman -S --needed -
