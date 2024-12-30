#!/usr/bin/env bash
set -euo pipefail
cd `dirname -- $0`

nix-channel --add https://nixos.org/channels/nixos-unstable nixos

if [ ! -f ./local/hardware-configuration.nix ]; then
  if [ -f ./hardware-configuration.nix ]; then
    echo 'Found hardware-configration.nix. moving it to ./hosts/default/ ...'
    mv ./hardware-configuration.nix ./hosts/default/
  else
    echo 'Generating hardware-configuration.nix...'
    TMP_DIR="./tmp"
    mkdir $TMP_DIR
    nixos-generate-config --dir $TMP_DIR
    mv $TMP_DIR/hardware-configuration.nix ./hosts/default/
    rm $TMP_DIR/configuration.nix
    rmdir $TMP_DIR
  fi
fi
