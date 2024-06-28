#!/usr/bin/env bash

# nix-channel --remove nixos
nix-channel --add https://nixos.org/channels/nixos-unstable nixos
# nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs

./update.sh
./copy-local.sh

echo "REMEMBER TO CHANGE password.nix!"
