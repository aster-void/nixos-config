# README

## WARNING

I don't recommend using this repo out of the box, because many things are customized just for me.
I'm making this open just s.t. you can read this as a reference, and future me can clone this before setting up SSH.
It may also run breaking change at any time, so even if you are using this, it's highly recommended to detach from my remote repo.

(take a look at NOTES.md though, it may be worth it)

## How to Use

1. install NixOS.
2. connect to the Internet via nmtui / tools built into DE if you use a DE. this step can be skipped if you use an ethernet.
3. clone this repo (https://github.com/aster-void/nixos-config)
4. run ./init.sh
5. edit the config files (I recommend editing ./etc/keymap.nix, ./password.nix and ./local.nix before running rebuild)
6. run `nixos-rebuild switch`
7. run `lefthook install` (optional, for development)

## Things to do after

- clone .dotfiles and decorations. (decorations is private for copyright reason)
