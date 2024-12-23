{ pkgs ? import <nixpkgs> { } }: pkgs.mkShell {
  buildInputs = with pkgs; [
    nixpkgs-fmt
    lefthook
    deadnix
  ];
  shellHook = ''
    lefthook install
  '';
}
