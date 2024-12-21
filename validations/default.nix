{ pkgs, lib, config, ... }:
let
  assertMsg = lib.asserts.assertMsg;
in
assert assertMsg true "sample: if on the left is false, it shouldn't build";
true
