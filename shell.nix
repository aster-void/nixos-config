{
  pkgs ? import <nixpkgs> {},
  agenix,
}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    lefthook
    alejandra
    deadnix
    statix
    nil
    agenix.packages.${pkgs.system}.default
  ];
  shellHook = ''
    lefthook install
  '';
}
