{ pkgs ? import <nixpkgs> { } }: pkgs.mkShell {
  buildInputs = with pkgs; [
    lefthook
    nixpkgs-fmt
    deadnix
  ];
  shellHook = ''
    lefthook install
  '';
}
