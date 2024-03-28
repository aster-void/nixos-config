#!/bin/sh
# home manager
# RUN THIS AS USER
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.11.tar.gz home-manager
sudo nix-channel --update

