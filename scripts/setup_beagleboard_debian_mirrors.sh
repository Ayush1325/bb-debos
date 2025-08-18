#!/bin/sh
ARCH=$1
SUITE=$2

echo "[LOG] Setup Keyring"
keyring_deb=/bb-keyring.deb
dpkg -i ${keyring_deb}
rm ${keyring_deb}

echo "[LOG] Setup Beagle Sources"
cp /etc/bbb.io/templates/apt/beagle.sources /etc/apt/sources.list.d/
