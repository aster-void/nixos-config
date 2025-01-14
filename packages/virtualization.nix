{pkgs, ...}: {
  virtualisation = {
    docker = {
      enable = true;
      rootless = {
        enable = true;
        setSocketVariable = true;
      };
    };
    waydroid.enable = true;
  };
  environment.defaultPackages = with pkgs; [
    kubernetes
    kubectl
    k3s
    # emulator
    # qemu
    # quickemu # how are they different?
  ];
}
