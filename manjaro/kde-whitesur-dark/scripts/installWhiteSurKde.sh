#!/bin/bash

ROOT_UID=0

INSTALL_DIR="/home/yonggan/iso-profiles/manjaro/kde-whitesur-dark/desktop-overlay"

# Destination directory
AURORAE_DIR="${INSTALL_DIR}/usr/share/aurorae/themes"
SCHEMES_DIR="${INSTALL_DIR}/usr/share/color-schemes"
PLASMA_DIR="${INSTALL_DIR}/usr/share/plasma/desktoptheme"
LOOKFEEL_DIR="${INSTALL_DIR}/usr/share/plasma/look-and-feel"
KVANTUM_DIR="${INSTALL_DIR}/usr/share/Kvantum"
WALLPAPER_DIR="${INSTALL_DIR}/usr/share/wallpapers"

SRC_DIR="WhiteSur-kde"

THEME_NAME=WhiteSur
LATTE_DIR="/home/yonggan/iso-profiles/manjaro/kde-whitesur-dark/desktop-overlay/etc/skel/.config/latte"

[[ ! -d ${AURORAE_DIR} ]] && mkdir -p ${AURORAE_DIR}
[[ ! -d ${SCHEMES_DIR} ]] && mkdir -p ${SCHEMES_DIR}
[[ ! -d ${PLASMA_DIR} ]] && mkdir -p ${PLASMA_DIR}
[[ ! -d ${LOOKFEEL_DIR} ]] && mkdir -p ${LOOKFEEL_DIR}
[[ ! -d ${KVANTUM_DIR} ]] && mkdir -p ${KVANTUM_DIR}
[[ ! -d ${WALLPAPER_DIR} ]] && mkdir -p ${WALLPAPER_DIR}

install() {
  local name=${1}
  local color=${2}

  [[ -d ${AURORAE_DIR}/${name} ]] && rm -rf ${AURORAE_DIR}/${name}*
  [[ -d ${PLASMA_DIR}/${name} ]] && rm -rf ${PLASMA_DIR}/${name}*
  [[ -f ${SCHEMES_DIR}/${name}.colors ]] && rm -rf ${SCHEMES_DIR}/${name}*.colors
  [[ -d ${LOOKFEEL_DIR}/com.github.vinceliuice.${name} ]] && rm -rf ${LOOKFEEL_DIR}/com.github.vinceliuice.${name}*
  [[ -d ${KVANTUM_DIR}/${name} ]] && rm -rf ${KVANTUM_DIR}/${name}*
  [[ -d ${WALLPAPER_DIR}/${name} ]] && rm -rf ${WALLPAPER_DIR}/${name}
  [[ -f ${LATTE_DIR}/${name}.layout.latte ]] && rm -rf ${LATTE_DIR}/${name}.layout.latte

  cp -r ${SRC_DIR}/aurorae/*                                                         ${AURORAE_DIR}
  cp -r ${SRC_DIR}/Kvantum/*                                                         ${KVANTUM_DIR}
  cp -r ${SRC_DIR}/color-schemes/*                                                   ${SCHEMES_DIR}
  cp -r ${SRC_DIR}/plasma/desktoptheme/${name}*                                      ${PLASMA_DIR}
  cp -r ${SRC_DIR}/plasma/desktoptheme/icons                                         ${PLASMA_DIR}/${name}
  cp -r ${SRC_DIR}/plasma/desktoptheme/icons                                         ${PLASMA_DIR}/${name}-alt
  cp -r ${SRC_DIR}/plasma/desktoptheme/icons                                         ${PLASMA_DIR}/${name}-dark
  cp -r ${SRC_DIR}/plasma/look-and-feel/*                                            ${LOOKFEEL_DIR}
  cp -r ${SRC_DIR}/wallpaper/${name}                                                 ${WALLPAPER_DIR}
  [[ -d ${LATTE_DIR} ]] && cp -r ${SRC_DIR}/latte-dock/*                             ${LATTE_DIR}
}

echo "Installing '${THEME_NAME} kde themes'..."

install "${name:-${THEME_NAME}}"

echo "Install finished..."
