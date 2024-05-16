{ pkgs, ... }:
{
  users.users.aster.packages = with pkgs; [
    ghidra
  ];
}
