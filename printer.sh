sudo pacman -S 	avahi cups usbutils

yaourt -S epson-inkjet-printer-escpr

systemctl enable --now cups.service

systemctl enable avahi-daemon.service
