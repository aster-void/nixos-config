# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
# https://releases.nixos.org/nixos/unstable/
{ ... }: {
  imports =
    [
      ./packages
      ./etc

      ./validations/evaluate.nix
      ./others.nix
    ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.permittedInsecurePackages = [
    "dotnet-core-combined"
    "dotnet-core-6.0.428"
    "dotnet-sdk-6.0.428"
    "dotnet-sdk-7.0.410"
    "dotnet-sdk-wrapped-6.0.428"
  ];

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05"; # Did you read the comment?
}