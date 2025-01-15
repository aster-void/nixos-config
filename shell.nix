{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    lefthook
    alejandra
    deadnix
    statix
    nil
  ];
  shellHook = ''
    lefthook install
  '';
}
