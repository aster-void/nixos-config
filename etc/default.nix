{ ... }: {
  imports = [
    ./env.nix
    ./fonts.nix
    ./kernel.nix
    ./keymap.nix
    ./i18n
    ./network.nix
    ./pwn.nix
    ./shell
  ];
}
