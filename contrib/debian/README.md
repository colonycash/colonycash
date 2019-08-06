
Debian
====================
This directory contains files used to package colonycashd/colonycash-qt
for Debian-based Linux systems. If you compile colonycashd/colonycash-qt yourself, there are some useful files here.

## colonycash: URI support ##


colonycash-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install colonycash-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your colonycash-qt binary to `/usr/bin`
and the `../../share/pixmaps/colonycash128.png` to `/usr/share/pixmaps`

colonycash-qt.protocol (KDE)

