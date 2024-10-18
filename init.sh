#!/usr/bin/env bash
cd `dirname -- $0`

nix-channel --add https://nixos.org/channels/nixos-unstable nixos

if [ ! -f ./optional.nix ]; then
  echo 'Copying optional.nix ...'
  cp samples/optional.nix .
fi

if [ ! -f ./password.nix ]; then
  echo 'Copying password.nix ...'
  cp samples/password.nix .
fi

echo "REMEMBER TO CHANGE password.nix!"
