# TODO: move each of those configs to corresponding file (create one if not exists)
{
  nix = {
    settings = {
      experimental-features = ["nix-command" "flakes"];
      accept-flake-config = true;
      auto-optimise-store = true;

      trusted-users = ["root" "aster"];
      trusted-substituters = [
        "https://hydra.nixos.org/"
        "https://helix.cachix.org/"
      ];
    };

    gc = {
      automatic = true;
      options = "--delete-older-than 3d";
      dates = "weekly";
    };
  };

  # Auto system update
  system.autoUpgrade = {
    enable = false;
  };
}
