# this file is NOT imported to nixos config. it's a configuration file for `agenix`.
let
  amberwood = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINWhvqrrKaaFFcE6LGfVujgFGStteGcBRhuPMJ5mNdLq aster@nixos" # aster
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILRFghJcSqpsjAF3VVwTYdNF6yU73pNjMpDfNPtMh9ju root@nixos" # root
  ];
  bogster = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHIUFCw/2UFXtaF5R7qOKhFMrAi6W9GSpbJ1EKNYuA58 aster@nixos" # aster
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIldntqQ74sdKhP8yi/nFY9PM+tLDbfuWIOr2Ym4NeFh root@nixos" # root
  ];
in
{
  "secrets/wifi-names.age".publicKeys = amberwood ++ bogster;
  "secrets/wifi.age".publicKeys = amberwood ++ bogster;
}
