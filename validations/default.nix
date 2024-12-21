{ pkgs, lib, config, ... }:
let
  assertMsg = lib.asserts.assertMsg;
in
assert assertMsg true "sample: if on the left is false, it shouldn't build";
assert assertMsg
  # reads as: not (system.packages |> list.contains fcitx5)
  (!(builtins.elem pkgs.fcitx5 config.environment.systemPackages))
  "fcitx5 must not be installed via environment.systemPackages,
  as it does not contain addons and may (will) make it impossible to find the addon.
  use i18n.inputMethod and only it.";
true
