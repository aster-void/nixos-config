# README

## How to Use

1. install NixOS.
2. connect to the Internet via nmtui. (can be skipped if you use an ethernet)
3. run ./init.sh
4. edit the config files (I recommend editing ./etc/keymap.nix, ./user.nix, and ./optional.nix before running rebuild)
5. run `nixos-rebuild switch`

## Things to do after

- clone .dotfiles and decorations. (decorations is private for copyright reason)
- configure fcitx5

## Forked From

this repo is originally copied from https://github.com/erikdubois/nixos-configurations/
