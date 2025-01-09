# TODO: move each of those configs to corresponding file (create one if not exists)
{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.settings.accept-flake-config = true;
  nix.settings.auto-optimise-store = true;

  nix.gc = {
    automatic = true;
    options = "--delete-older-than 3d";
    dates = "weekly";
  };

  # Auto system update
  system.autoUpgrade = {
    enable = false;
  };
  nix.settings.trusted-users = [ "root" "aster" ];

  nix.settings.trusted-substituters = [
    "https://hydra.nixos.org/"
  ];
}
