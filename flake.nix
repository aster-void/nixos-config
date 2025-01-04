{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      extra = {
        user = "aster";
        git-email = "137767097+aster-void@users.noreply.github.com";
      };
      mkSystemConfig = host: nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./nixos/configuration.nix
          ./hosts/${host}
        ];
        extraArgs = extra // {
          inherit host;
        };
      };
    in
    {
      devShell.${system} = import ./shell.nix { inherit pkgs; };
      nixosConfigurations.desktop = mkSystemConfig "desktop";
      nixosConfigurations.laptop = mkSystemConfig "laptop";
    };
}
