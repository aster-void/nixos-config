{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    lefthook
    nixpkgs-fmt
    deadnix
    nil
  ];
  shellHook = ''
    lefthook install
  '';
}
