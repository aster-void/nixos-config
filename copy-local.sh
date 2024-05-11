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
