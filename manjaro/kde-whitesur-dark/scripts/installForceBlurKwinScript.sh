#!/bin/bash

INSTALL_DIR="/home/yonggan/iso-profiles/manjaro/kde-whitesur-dark/desktop-overlay"
FORCE_BLUR_DIR="$INSTALL_DIR/etc/skel/.local/share/kwin/scripts/"

mkdir -pv "$FORCE_BLUR_DIR"
cp kwin-forceblur "$FORCE_BLUR_DIR" -rv
