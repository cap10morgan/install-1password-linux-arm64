#!/usr/bin/env bash

set -ex

pushd ~/Downloads

curl -sSO https://downloads.1password.com/linux/tar/stable/aarch64/1password-latest.tar.gz

tar -xf 1password-latest.tar.gz

if [[ -e /opt/1Password ]]; then
  sudo rm -rf /opt/1Password-old
  sudo mv /opt/1Password /opt/1Password-old
fi

sudo mkdir -p /opt/1Password
sudo mv 1password-*/* /opt/1Password

sudo /opt/1Password/after-install.sh

mkdir -p ~/.local/share/applications
ln -nsf /opt/1Password/resources/1password.desktop ~/.local/share/applications/

mkdir -p ~/.icons
ln -nsf /opt/1Password/resources/icons/hicolor/512x512/apps/1password.png ~/.icons/

rm 1password-latest.tar.gz

popd
