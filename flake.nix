{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    # aagl.url = "github:ezKEa/aagl-gtk-on-nix";
    # aagl.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, ... } @ inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      extra = {
        inherit inputs;
        user = "aster";
        git-email = "137767097+aster-void@users.noreply.github.com";
      };
      mkSystemConfig = host: nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./nixos/configuration.nix
          ./hosts/${host}
          {
            config._module.args = extra // {
              inherit host;
            };
          }
        ];
      };
    in
    {
      devShell.${system} = import ./shell.nix { inherit pkgs; };
      nixosConfigurations.amberwood = mkSystemConfig "amberwood";
      nixosConfigurations.bogster = mkSystemConfig "bogster";
    };
}
