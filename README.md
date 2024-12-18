# README

## WARNING

I don't recommend using this repo out of the box, because many things are customized just for me.
I'm making this open just s.t. you can read this as a reference, and future me can clone this before setting up SSH.

## How to Use

1. install NixOS.
2. connect to the Internet via nmtui. (can be skipped if you use an ethernet)
3. run ./init.sh
4. edit the config files (I recommend editing ./etc/keymap.nix, ./password.nix and ./local.nix before running rebuild)
5. run `nixos-rebuild switch`
6. run `lefthook install` (optional)

## Things to do after

- clone .dotfiles and decorations. (decorations is private for copyright reason)
- configure fcitx5
