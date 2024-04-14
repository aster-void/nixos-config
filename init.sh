cp passwd-sample.nix passwd.nix
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
./install-flatpak-packages.sh
