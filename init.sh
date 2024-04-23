#!/usr/bin/env bash

# nix channels

# nix-channel --remove nixos
nix-channel --add https://nixos.org/channels/nixos-unstable nixos
nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs

nix-channel --update


# copying template files
if [ ! -f password.nix ]; then
  cp password.nix.sample password.nix
fi
if [ ! -f hardware-dep.nix ]; then
  cp hardware-dep.nix.sample hardware-dep.nix
fi
# if [ ! -f wifi.nix ]; then
#   cp wifi.nix.sample wifi.nix
# fi
