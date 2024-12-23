#!/usr/bin/env bash
set -euo pipefail
cd `dirname -- $0`

nix-channel --add https://nixos.org/channels/nixos-unstable nixos

if [ ! -f ./local/hardware-configuration.nix ]; then
  if [ -f ./hardware-configuration.nix ]; then
    echo 'Found hardware-configration.nix. moving it to ./local/ ...'
    mv ./hardware-configuration.nix ./local/
  else
    echo 'Generating hardware-configuration.nix...'
    TMP_DIR="./tmp"
    mkdir $TMP_DIR
    nixos-generate-config --dir $TMP_DIR
    mv $TMP_DIR/hardware-configuration.nix ./local/
    rm $TMP_DIR/configuration.nix
    rmdir $TMP_DIR
  fi
fi

if [ ! -f ./local/optional.nix ]; then
  echo 'Copying optional.nix ...'
  cp samples/optional.nix ./local
fi

if [ ! -f ./local/password.nix ]; then
  echo 'Copying password.nix ...'
  cp samples/password.nix ./local/password.nix
fi

echo "WARNING: REMEMBER TO CHANGE local/password.nix!"
