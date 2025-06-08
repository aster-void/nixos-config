{
  shared,
  pkgs,
  ...
}: {
  users.users.${shared.system.user}.packages = with pkgs; [
    ghidra
  ];
}
