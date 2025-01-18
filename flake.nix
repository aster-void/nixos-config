{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    agenix.url = "github:ryantm/agenix";
    agenix.inputs.nixpkgs.follows = "nixpkgs";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
  };

  outputs = {
    nixpkgs,
    agenix,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};

    extra = {
      inherit system inputs;
      user = "aster";
      git-email = "137767097+aster-void@users.noreply.github.com";
    };

    mkSystemConfig = host:
      nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs =
          extra
          // {
            inherit host;
          };

        modules = [
          agenix.nixosModules.default
          ./configuration.nix
          ./hosts/${host}
        ];
      };
  in {
    devShell.${system} = import ./shell.nix {inherit pkgs;};
    nixosConfigurations.amberwood = mkSystemConfig "amberwood";
    nixosConfigurations.bogster = mkSystemConfig "bogster";
  };
}
