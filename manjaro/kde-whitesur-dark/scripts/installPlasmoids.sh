#!/bin/bash
INSTALL_DIR="/home/yonggan/iso-profiles/manjaro/kde-whitesur-dark/desktop-overlay/usr/share/plasma/plasmoids"
rm -rf $INSTALL_DIR/*

git clone https://github.com/psifidotos/applet-latte-separator.git $INSTALL_DIR/org.kde.latte.separator
git clone https://github.com/psifidotos/applet-latte-sidebar-button.git $INSTALL_DIR/org.kde.latte.sidebarbutton
git clone https://gitlab.com/aleixq/apptitle-plasmoid.git $INSTALL_DIR/apptitle
mv $INSTALL_DIR/apptitle/org.communia.apptitle $INSTALL_DIR
rm -rf $INSTALL_DIR/apptitle

git clone https://github.com/psifidotos/applet-latte-spacer.git	$INSTALL_DIR/org.kde.latte.spacer
git clone https://github.com/MarianArlt/kde-plasmoid-betterinlineclock.git $INSTALL_DIR/inlineclock
mv $INSTALL_DIR/inlineclock/org.kde.plasma.betterinlineclock $INSTALL_DIR
rm -rf $INSTALL_DIR/inlineclock

git clone https://github.com/0kzh/mac-inline-battery.git $INSTALL_DIR/org.kde.plasma.inlineBattery
git clone https://github.com/ismailof/mediacontroller_plus.git $INSTALL_DIR/mediacontroller
mv $INSTALL_DIR/mediacontroller/plasmoid $INSTALL_DIR/org.kde.plasma.mediacontroller_plus
rm -rf $INSTALL_DIR/mediacontroller

git clone https://github.com/kppleos/org.kpple.kppleMenu.git $INSTALL_DIR/kpple
mv $INSTALL_DIR/kpple/package $INSTALL_DIR/org.kpple.kppleMenu
rm -rf $INSTALL_DIR/kpple

git clone https://github.com/KDE/plasma-desktop.git $INSTALL_DIR/plasma-desktop
mv $INSTALL_DIR/plasma-desktop/applets/kicker/package $INSTALL_DIR/launchpadPlasma
rm -rf $INSTALL_DIR/plasma-desktop
