{pkgs, ...}: {
  imports = [
    ./git.nix
    ./virtualization.nix
  ];

  environment.systemPackages = with pkgs; [
    wezterm
  ];
}
