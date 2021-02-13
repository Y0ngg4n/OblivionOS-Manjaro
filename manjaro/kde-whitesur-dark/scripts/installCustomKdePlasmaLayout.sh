#!/bin/bash
INSTALL_DIR="/home/yonggan/iso-profiles/manjaro/kde-whitesur-dark/desktop-overlay"

# Destination directory
LOOKFEEL_DIR="${INSTALL_DIR}/usr/share/plasma/look-and-feel"
cp -f org.kde.plasma.desktop-layout.js $LOOKFEEL_DIR/com.github.vinceliuice.WhiteSur/contents/layouts
cp -f org.kde.plasma.desktop-layout.js $LOOKFEEL_DIR/com.github.vinceliuice.WhiteSur-alt/contents/layouts
cp -f org.kde.plasma.desktop-layout.js $LOOKFEEL_DIR/com.github.vinceliuice.WhiteSur-dark/contents/layouts
