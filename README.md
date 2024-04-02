# README

## How to Use

1. run ./init.sh this will do most of the boilerplate works.
2. rename the user in personal/packages.nix
3. look inside personal.nix and follow the instructions there (may be more than one).
(below are optional)
4. initialize zoxide by running zoxide init $SHELLNAME >> /home/$USER/.bashrc

## Directory Structure

[M]: Mutable (.gitignore'd, make changes in these files)
[L]: Locked (you shouldn't make changes in these files unless necesarry)
[C]: Clone, imported from erik's repo
->: refers (only important ones)

[L] init.sh : run to set up the repo.
[L] configuration.nix : only contains necesarry packages + options. mutate personal.nix if you need some more.
-> desktop.nix, personal.nix, system-packages.nix
[M] desktop.nix : choose your desktop environment here.
-> desktop/*
[L] desktop/* : contains desktop environments.
[M] system-packages.nix : choose what you want system-wide. this contains critical packages, so be careful on deletion.
[M] personal.nix : modify this to fit your personal need.
-> personal/*, drivers/*
[M] personal/ : use this directory for separating files.
[L] drivers/* : contains device-specific drivers.
[C] Data/*

## Forked From

this repo is originally copied from https://github.com/erikdubois/nixos-configurations/
