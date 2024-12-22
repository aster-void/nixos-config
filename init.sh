#!/usr/bin/env bash
cd `dirname -- $0`

nix-channel --add https://nixos.org/channels/nixos-unstable nixos

if [ ! -f ./local/hardware-configuration.nix ]; then
  echo 'Generating hardware-configuration.nix...'
  TMP_DIR="./tmp"
  mkdir -p ${TMP_DIR}
  nixos-generate-config --dir ${TMP_DIR}
  mv ./tmp/hardware-configuration.nix
  rm ${TMP_DIR} -r
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
