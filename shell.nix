{ pkgs ? import <nixpkgs> { } }: pkgs.mkShell {
  buildInputs = with pkgs; [ lefthook nil ];
  shellHook = ''
    lefthook install
  '';
}
