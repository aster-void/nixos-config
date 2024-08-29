# README

## How to Use

1. install NixOS.
2. connect to the Internet via nmtui. (can be skipped if you use an ethernet)
3. run nix-shell -p git helix # or your favorite cui editor
4. clone this repo via https
5. run ./init.sh . this will do most of the boilerplate works.
6. rename the user in ./personal/ (helix global search might help)
7. look inside personal.nix and follow the instructions there (may be more than one).

(below are optional)
8. initialize zoxide by running zoxide init $SHELLNAME >> /home/$USER/.${SHELL}rc

## Things to do after

- clone .dotfiles and decorations. (decorations is private for copyright reason)
- configure fcitx5

## Forked From

this repo is originally copied from https://github.com/erikdubois/nixos-configurations/
