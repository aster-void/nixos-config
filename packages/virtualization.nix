{ pkgs, ... }:
{
  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };
  environment.defaultPackages = with pkgs; [
    # emulator
    qemu
    # quickemu # how are they different?
  ];
}
