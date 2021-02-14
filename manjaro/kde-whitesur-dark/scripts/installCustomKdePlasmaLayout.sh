#!/bin/bash
INSTALL_DIR="/home/yonggan/iso-profiles/manjaro/kde-whitesur-dark/desktop-overlay"

# Destination directory
LOOKFEEL_DIR="${INSTALL_DIR}/usr/share/plasma/look-and-feel"
cp -f org.kde.plasma.desktop-layout.js $LOOKFEEL_DIR/com.github.vinceliuice.WhiteSur/contents/layouts
cp -f org.kde.plasma.desktop-layout.js $LOOKFEEL_DIR/com.github.vinceliuice.WhiteSur-alt/contents/layouts
cp -f org.kde.plasma.desktop-layout.js $LOOKFEEL_DIR/com.github.vinceliuice.WhiteSur-dark/contents/layouts

cp Splash.svg $LOOKFEEL_DIR/com.github.vinceliuice.WhiteSur/contents/splash/images/logo.svg
cp Splash.svg $LOOKFEEL_DIR/com.github.vinceliuice.WhiteSur-alt/contents/splash/images/logo.svg
cp Splash.svg $LOOKFEEL_DIR/com.github.vinceliuice.WhiteSur-dark/contents/splash/images/logo.svg

cp Logo.svg $INSTALL_DIR/usr/share/icons/oblivion/Logo.svg
cp Hole.svg $INSTALL_DIR/usr/share/icons/oblivion/Hole.svg
cp Hole20.svg $INSTALL_DIR/usr/share/icons/oblivion/Hole20.svg


cp Hole20.svg $INSTALL_DIR/usr/share/icons/WhiteSur/apps/scalable/oblivion-hole20.svg
cp Hole.svg $INSTALL_DIR/usr/share/icons/WhiteSur/apps/scalable/oblivion-hole.svg

cp Hole20.svg $INSTALL_DIR/usr/share/icons/WhiteSur-dark/apps/scalable/oblivion-hole20.svg
cp Hole.svg $INSTALL_DIR/usr/share/icons/WhiteSur-dark/apps/scalable/oblivion-hole.svg
